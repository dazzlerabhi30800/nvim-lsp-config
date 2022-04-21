interface Props {
	onClick : (id : string) => void
}

function myComponent(props: Props) {
	console.log(props)
	console.log(props.onClick)
	return 'hello world'
}
