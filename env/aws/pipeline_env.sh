
export_env(){

    ##########################################################################
    ##########################################################################
    ##
    ## don't customize these lines unless your goal is
    ## to change the IaC directory structure
    ##
    ##########################################################################
    ##########################################################################


    export STACK_NAME="{{ PipelineStackName }}"
    export REGION='{{ Region }}'


    ##
    ## stage templates in S3?  1=yes, 0=no
    ##
    export STAGE_TEMPLATE=0

    ##########################################################################
    ##########################################################################
    ##
    ## DO NOT customize these lines
    ##
    ##########################################################################
    ##########################################################################

    export WORKING_DIR=$(pwd)
    export INFRA_PATH='infra/aws'
    export PARAM_PATH='infra/aws/params'
    export CF_TEMPLATE_PATH=$INFRA_PATH'/pipeline/pipeline.json'
    export CF_PARAM_PATH=$PARAM_PATH'/pipeline_params.json'
    export LOG_PATH=$WORKING_DIR'/logs/'

}

export_env
