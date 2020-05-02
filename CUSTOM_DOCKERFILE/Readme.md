# DOCKER
## 도커 네트워크
각 컨테이너는 독립된 네트워크 공간을 할당 받는다 ( linux namespace )   
네 가지의 도커 네트워크 모드 있다   
### bridge 모드 
기본으로 컨테이너 생성시, 고유한 네트워크 네임스페이스 영역이 하나씩 생성되며,   
docker() 브릿지에 컨테이너 인터페이스들이 하나씩 바인딩 된다
### host 모드
컨테이너가 독립적인 네트워크 영역을 가지지 않고 호스트와 네트워크를 함꼐 사용함
### container 모드
두 컨테이너의 네트워크 환경을 공유하게 하려면 '''--net=container:CONTAINER_ID'''를 준다     
그러면 같은 IP와 MAC 주소를 가지게 된다
### none 모드
'''--net=none''' 옵션으로 컨테이너를 생성하면 격리된 네트워크 영역을 갖긴 하지만,     
인터페이스가 없는 상태로 컨테이너를 생성하게 된다. 아무것도 없는 clear한 상태다
### 도커 브릿지 ( 이거 아니야 )
~~~sh 
docker network create elastic-bridge
docker network inspect elastic-bridge
~~~

### 도커 링크 ( 이거야 )
container 사이를 연동하고 싶을 때, 컨테이너가 올라갈 떄, 아이피가 자동으로 할당 되서 링크를 사용해서 동적IP 이슈를 해결한다.
문제는 동일 호스트에 있는 도커에서만 링크가 가능하다고 하는데 docker swarm 같은 orchestration 툴을 도입하거나 dynamic DNS를 구출해야한단다 

https://bluese05.tistory.com/54