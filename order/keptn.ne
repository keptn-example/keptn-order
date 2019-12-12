steps:
- step:
    repository: https://github.com/keptn-orders/keptn-onboarding.git
    branch: neoload
    teststrategy: performance
    project:
    - path: /order/neoload/order_basic.yaml
    - path: /order/neoload/load_template/load_template.nlp
    constant_variables:
    - name: server_host
      value: order.keptnorders-production.svc.cluster.local
    - name: server_port
      value: 80
    description: OrderLoad
    scenario: OrderLoad
    infrastructure:
      local_LG:
      - name: lg1
      populations:
      - name: OrderLoad
        lgs:
        - name: lg1
