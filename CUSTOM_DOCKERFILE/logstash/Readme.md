# LOGSTASH
데이터 흐름을 위한 오픈 소스 중앙 처리 엔진   
- DataFlow 파이프라인을 구축하여 이벤트 데이터의 변환 및 스트리밍 설정
- 다양한 데이터 접근 지원
- 원시 버퍼링을 통한 수평적인 스케일링 기능 지원
- 통합 처리를 위한 탄탄한 플러그인 지원 
## conf 
데이터를 어디서 받아와서 (Input) - 어떻게 처리하고 (Filter) - 어디로 보내줄지 (Output)     
Config 여러개를 만들어서 동시에 켜면 파이프라인이다.     
https://pcconsoleoraksil.tistory.com/249?category=1073544

### Shoot the log
> echo 'Hello world!' | nc localhost 9900        

ElasticSearch(Index Management) kibana(Index Patterns)에서 index를 등록해야한다. 그러면 보여