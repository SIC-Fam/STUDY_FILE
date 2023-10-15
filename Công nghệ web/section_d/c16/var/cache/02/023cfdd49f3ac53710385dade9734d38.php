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

/* member.html */
class __TwigTemplate_094f438df9ca1bb21492a84d4a68f3df extends Template
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
        $this->parent = $this->loadTemplate("layout.html", "member.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 3), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "surname", [], "any", false, false, false, 3), "html", null, true);
    }

    // line 4
    public function block_description($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 4), "html_attr");
        echo " ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "surname", [], "any", false, false, false, 4), "html_attr");
        echo " on Creative Folk";
    }

    // line 6
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 7
        echo "<main class=\"container\" id=\"content\">
  <section class=\"header\">
    <h1>";
        // line 9
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 9), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "surname", [], "any", false, false, false, 9), "html", null, true);
        echo "</h1>
    <p class=\"member\"><b>Member since:</b> ";
        // line 10
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "joined", [], "any", false, false, false, 10), "F d, Y"), "html", null, true);
        echo "</p>
    ";
        // line 11
        if (twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "picture", [], "any", false, false, false, 11)) {
            // line 12
            echo "      <img src=\"";
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "uploads/";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "picture", [], "any", false, false, false, 12), "html", null, true);
            echo "\"  alt=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 12), "html", null, true);
            echo "\"><br>
    ";
        } else {
            // line 14
            echo "      <img src=\"";
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "uploads/member.png\"  alt=\"\"><br>
    ";
        }
        // line 16
        echo "    ";
        if (($context["success"] ?? null)) {
            echo "<div class=\"alert alert-success\">";
            echo twig_escape_filter($this->env, ($context["success"] ?? null), "html", null, true);
            echo "</div>";
        }
        // line 17
        echo "    ";
        if ((twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "id", [], "any", false, false, false, 17) == twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "id", [], "any", false, false, false, 17))) {
            // line 18
            echo "      <nav class=\"member-options\">
        <a href=\"work.php\" class=\"btn btn-primary\">Add work</a>
        <a href=\"member-edit-profile.php\" class=\"btn btn-primary\">Edit profile</a>
        <a href=\"member-edit-picture.php\" class=\"btn btn-primary\">Profile picture</a>
      </nav>
    ";
        }
        // line 24
        echo "  </section>
  <section class=\"grid\">
    ";
        // line 26
        echo twig_include($this->env, $context, "article-summaries.html");
        echo "
  </section>
</main>
";
    }

    public function getTemplateName()
    {
        return "member.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  125 => 26,  121 => 24,  113 => 18,  110 => 17,  103 => 16,  97 => 14,  87 => 12,  85 => 11,  81 => 10,  75 => 9,  71 => 7,  67 => 6,  57 => 4,  48 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'layout.html' %}

{% block title %}{{ member.forename }} {{ member.surname }}{% endblock %}
{% block description %}{{ member.forename|e('html_attr') }} {{ member.surname|e('html_attr') }} on Creative Folk{% endblock %}

{% block content %}
<main class=\"container\" id=\"content\">
  <section class=\"header\">
    <h1>{{ member.forename }} {{ member.surname }}</h1>
    <p class=\"member\"><b>Member since:</b> {{ member.joined|date('F d, Y') }}</p>
    {% if member.picture %}
      <img src=\"{{ doc_root }}uploads/{{ member.picture }}\"  alt=\"{{ member.forename }}\"><br>
    {% else %}
      <img src=\"{{ doc_root }}uploads/member.png\"  alt=\"\"><br>
    {% endif %}
    {% if success %}<div class=\"alert alert-success\">{{ success }}</div>{% endif %}
    {% if session.id == member.id %}
      <nav class=\"member-options\">
        <a href=\"work.php\" class=\"btn btn-primary\">Add work</a>
        <a href=\"member-edit-profile.php\" class=\"btn btn-primary\">Edit profile</a>
        <a href=\"member-edit-picture.php\" class=\"btn btn-primary\">Profile picture</a>
      </nav>
    {% endif %}
  </section>
  <section class=\"grid\">
    {{ include('article-summaries.html') }}
  </section>
</main>
{% endblock %}", "member.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\member.html");
    }
}
