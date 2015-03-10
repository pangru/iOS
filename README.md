# iOS

### Obj-C의 콜백 형태
- 1. Target-Action
    : 어떤 이벤트가 발생하면 특정 메세지를 특정 객체에 보내라
    : target = 메세지를 받는 객체
    : action = 보내는 메세지
 
- 2. Delegate (델리게이트) : Helper Object
    : 프로토콜을 준수하는 객체가 여기에 있으니, 상황이 발생하면 그에 맞는 메세지를 해당하는 객체에게 보내라.
    : call flow =  data source -> [Object] -> delegate

- 3. Notification Center

### Protocol
- data source : Data를 주는 역할
- table view
- View controler: delegate 라고 부름

