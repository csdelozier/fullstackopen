const Part = (props) => {
  console.log(props)
  return (
    <p>{props.course} {props.exercises}</p>
  );
};

const Header = (props) => {
  console.log(props)
  return (
    <h1>{props.course}</h1>
  );
};

const Content = (props) => {
  console.log(props)
  return (
    <div>
      <Part course={props.parts[0].name} exercises={props.parts[0].exercises} />
      <Part course={props.parts[1].name} exercises={props.parts[1].exercises} />
      <Part course={props.parts[2].name} exercises={props.parts[2].exercises} />
    </div>
  );
};

const Total = (props) => {
  console.log(props)
  const total = props.parts[0].exercises + props.parts[1].exercises + props.parts[2].exercises;
  return (
    <p>Number of exercises {total}</p>
  );
};

const App = () => {
  const course = 'Half Stack application development'
  const parts = [
    {
      name: 'Fundamentals of React',
      exercises: 10
    },
    {
      name: 'Using props to pass data',
      exercises: 7
    },
    {
      name: 'State of a component',
      exercises: 14
    }
  ]

  return (
    <div>
      <Header course={course} />
      <Content parts={parts} />
      <Total parts={parts} />
    </div>
  )
}

export default App