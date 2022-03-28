class DivElement extends HtmlElement{

  String id="";
  late CssStyleDeclaration? style;
  DivElement.created() : super.created();
}

class CssStyleDeclaration{
  String? width;
  String? height;
  String? border;
}


class HtmlElement extends Element implements NoncedElement {
  HtmlElement.created() : super.created();
}

class Element{
  Element.created();
}

class NoncedElement{

}