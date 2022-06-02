# React 가이드 - ???

제작자 - 박솔

- - -

## JSX란?

컴포넌트 사용법을 다루기 전에 먼저 다뤄보아야할 부분.  
 - JSX(JavaScript XML)는 Javascript에 XML을 추가한 확장한 문법이다.
 - JSX는 리액트로 프로젝트를 개발할 때 사용되므로 공식적인 자바스크립트 문법은 아니다.
 - 브라우저에서 실행하기 전에 바벨을 사용하여 일반 자바스크립트 형태의 코드로 변환된다.  
 - JSX는 하나의 파일에 자바스크립트와 HTML을 동시에 작성하여 편리하다.
 - 자바스크립트에서 HTML을 작성하듯이 하기 때문에 가독성이 높고 작성하기 쉽다.

 그러하다.

 - - -

 ## 1. 컴포넌트 만들기

 어렵지 않다. 그냥 코드를 복붙해 넣어보겠다.
```jsx
    class Subject extends Component {
        render(){
            return (
            <header>
                <h1>WEB</h1>
                world wide web!
            </header>
            );
        }
    }

    class App extends Component {
        render(){
            return (
            <div className='App'>
                <Subject></Subject>
            </div>
            );
        }
    }
```
(여기서는 class style로 제작했다.)  
그저 Subject라는 컴포넌트를 만들겠다는 클래스를 선언하고,  
Subject라는 태그를 넣어주면 끝이다.

당장 알아야할 것은 이게 전부라고 생각한다. 이것만 알아도 어느정도는 기능을 사용하는 것이 가능하다.

- - -

## 2. State와 Props

이 개념에 대해서 제대로 짚지 않으면 리액트를 공부하는데에 크나큰 어려움이 따른다.  
반드시 정확하게 짚고 넘어가야한다. 정확하게 짚어야하는 부분만 적어보도록 하겠다.
```jsx
    class App extends Component {
        constructor(props) {
            super(props);
            this.state = {
            subject:{title:'WEB', sub:'World Wide Web!'},
            contents:[
                {id:1, title:'HTML', desc:'HTML is for information'},
                {id:2, title:'CSS', desc:'CSS is for design'},
                {id:3, title:'JavaScript', desc:'JavaScript is for interactive'}
            ]
            }
        }
        render(){
            return (
            <div className='App'>
                <Subject 
                title={this.state.subject.title}  
                sub={this.state.subject.sub}></Subject>
                <TOC data={this.state.contents}></TOC>
                <Content title="HTML" desc="HTML is HyperText Markup Language."></Content>
            </div>
            );
        }
    }
```
이 부분은 부모 컴포넌트이다.  
constructor - 컴포넌트가 실행될 때 이 함수가 있다면 가장 먼저 실행되어 초기화를 담당한다.  
여기서는 state라는 내부 정보를 사용하여 contructor에서 state 값을 정해준 다음,  
render 내에서 해당 state 값을 찾아서 props 값으로 사용한다. (ex : title={this.state.subject.title} )

이제 자식 컴포넌트를 보자.
```jsx
    class TOC extends Component {
        render(){
            var lists = [];
            var data = this.props.data;
            var i = 0;
            while(i < data.length) {
            lists.push(<li key={data[i].id}><a href={"/content/" + data[i].id}>{data[i].title}</a></li>);
            i = i + 1;
            }
            return (
            <nav>
                <ul>
                    {lists}
                </ul>
            </nav>
            );
        }
    }
```
이 부분은 자식 컴포넌트이다.  
여기서 this.props.data의 data는 부모 컴포넌트의 \<TOC data={this.state.contents}>\</TOC>의 data다.  
한마디로 부모는 자식에게 props를 통해 전달해주는 것이고, 부모는 state라는 내부 정보를 사용하는 것이다.  
또한 state에서는 정보만을 넣어준다고 생각하면 쉽다. mode가 어떨때는 어떤 state의 요소를 쓰고 이런 부분은 전부 render 내에서 실행한다고 생각하면 된다.

- - -

## 3. Event

```jsx
    <h1><a href="/">{this.state.subject.title}</a></h1>
```
이 코드에서 onClick 이벤트를 넣는 법.
```jsx
<h1><a href="/" onClick={function(){
    alert('hi');
}}>{this.state.subject.title}</a></h1>
```
참 쉽죠?

- - -

## 4. Event 안에서 State값 변경하기

state값을 올바르게 변경하기 위해서는 우선 이 두가지 조치가 필요하다.

 - 함수 뒤에 .bind(this) 추가하기
 - this.setState 함수를 호출해서 state 값 변경하기

 이렇게 적어도 이해는 가능하지만, 좀 더 알기 쉽도록 예제를 추가시켜보겠다.

```jsx
<h1><a href="/" onClick={function(e){
    console.log(e);
    e.preventDefault();
}}>{this.state.subject.title}</a></h1>
```

여기서 state값을 변경해볼 것이다.

```jsx
<h1><a href="/" onClick={function(e){
    console.log(e);
    e.preventDefault();
    this.setState({mode : "welcome"});
}.bind(this)}>{this.state.subject.title}</a></h1>
```
".bind(this)"를 붙여주는 이유는, 이벤트가 호출됐을 때 실행되는 이 함수 안에서는 this가 컴포넌트 자신을 가리키지 않고 아무 값도 설정돼 있지 않기에 this가 undefined이다. undefined 값에서 state를 읽으려고 해서 오류가 발생한 것. 그렇기에 .bind(this)를 붙여주면 함수 안에서 this가 우리의 App 컴포넌트를 가리키게 된다.
this.setState 함수를 호출하는 이유는 그냥 'this.state.mode = "welcome"'같은 방식으로 바꾸려들면 __리액트가 state 값이 바뀌었다는 것을 모르기 때문에__ 리액트가 시키는대로 변경해야하는 이유이다.