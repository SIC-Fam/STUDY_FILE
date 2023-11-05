<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* article.html */
class __TwigTemplate_e076070b8e0b65f6bfc08f24e600dd70 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'title' => [$this, 'block_title'],
            'description' => [$this, 'block_description'],
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "layout.html";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("layout.html", "article.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "title", [], "any", false, false, false, 2), "html", null, true);
    }

    // line 3
    public function block_description($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "summary", [], "any", false, false, false, 3), "html_attr");
    }

    // line 4
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "<main class=\"article container\" id=\"content\">
  <section class=\"image\">
    ";
        // line 7
        if (twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "image_file", [], "any", false, false, false, 7)) {
            // line 8
            echo "      <img src=\"";
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "uploads/";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "image_file", [], "any", false, false, false, 8), "html", null, true);
            echo "\" 
         alt=\"";
            // line 9
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "image_alt", [], "any", false, false, false, 9), "html", null, true);
            echo "\">
    ";
        } else {
            // line 11
            echo "      <img src=\"";
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "uploads/blank.png\" alt=\"\">
    ";
        }
        // line 13
        echo "  </section>
  <section class=\"text\">
    <h1>";
        // line 15
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "title", [], "any", false, false, false, 15), "html", null, true);
        echo "</h1>
    <div class=\"date\">";
        // line 16
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "created", [], "any", false, false, false, 16), "F d, Y"), "html", null, true);
        echo "</div>
    <div class=\"content\">";
        // line 17
        echo twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "content", [], "any", false, false, false, 17);
        echo "</div>
    <p class=\"credit\">
      Posted in <a href=\"";
        // line 19
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "category.php?id=";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "category_id", [], "any", false, false, false, 19), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "category", [], "any", false, false, false, 19), "html", null, true);
        echo "</a>
      by <a href=\"";
        // line 20
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "member.php?id=";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "member_id", [], "any", false, false, false, 20), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "author", [], "any", false, false, false, 20), "html", null, true);
        echo "</a>
    </p>
  </section>
</main>
";
    }

    public function getTemplateName()
    {
        return "article.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  115 => 20,  107 => 19,  102 => 17,  98 => 16,  94 => 15,  90 => 13,  84 => 11,  79 => 9,  72 => 8,  70 => 7,  66 => 5,  62 => 4,  55 => 3,  48 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'layout.html' %}
{% block title %}{{ article.title }}{% endblock %}
{% block description %}{{ article.summary|e('html_attr') }}{% endblock %}
{% block content %}
<main class=\"article container\" id=\"content\">
  <section class=\"image\">
    {% if article.image_file %}
      <img src=\"{{ doc_root }}uploads/{{ article.image_file }}\" 
         alt=\"{{ article.image_alt }}\">
    {% else %}
      <img src=\"{{ doc_root }}uploads/blank.png\" alt=\"\">
    {% endif %}
  </section>
  <section class=\"text\">
    <h1>{{ article.title }}</h1>
    <div class=\"date\">{{ article.created|date('F d, Y') }}</div>
    <div class=\"content\">{{ article.content|raw }}</div>
    <p class=\"credit\">
      Posted in <a href=\"{{ doc_root }}category.php?id={{ article.category_id }}\">{{ article.category }}</a>
      by <a href=\"{{ doc_root }}member.php?id={{ article.member_id }}\">{{ article.author }}</a>
    </p>
  </section>
</main>
{% endblock %}", "article.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c15\\templates\\article.html");
    }
}
