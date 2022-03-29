package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAlbExample(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/security-group",
		Vars: map[string]interface{}{
			"private_subnets":"10.0.0.192/26",
            "public_subnets":"10.0.0.128/26",
			"group_name" : "test-security-group",
            "group_description" : "test-description",
			"logs_bucket_name" : "test-logs-bucket-test",
			"lb_name" : "test-lb",
			"lb_type" : "application",
			"project" : "test"
		},
	})

	terraform.InitAndApply(t, terraformOptions)

	defer terraform.Destroy(t, terraformOptions)

	// VPC test
	vpc_cidr_block := terraform.Output(t, terraformOptions, "vpc_cidr_block")
	vpc_id := terraform.Output(t, terraformOptions, "vpc_id")
	assert.Equal(t, "10.0.0.0/16", vpc_cidr_block)

	// Security Group Test
	security_group_vpc_id := terraform.Output(t, terraformOptions, "security_group_vpc_id")
	assert.Equal(t, vpc_id, security_group_vpc_id)

	// S3 tests
	s3_bucket_id := terraform.Output(t, terraformOptions, "s3_bucket_id")
	assert.Equal(t, "test-logs-bucket-test", s3_bucket_id)

	// Alb tests
	alb_name := terraform.Output(t, terraformOptions, "alb_name")
	assert.Equal(t, "test-lb", security_group_vpc_id)

}