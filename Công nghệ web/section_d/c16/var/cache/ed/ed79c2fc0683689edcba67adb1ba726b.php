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

/* member-edit-profile.html */
class __TwigTemplate_fcaa3f4c9b666918421af5627f3e7e0b extends Template
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
        $this->parent = $this->loadTemplate("layout.html", "member-edit-profile.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Update profile";
    }

    // line 4
    public function block_description($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Update profile for Creative Folk";
    }

    // line 6
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 7
        echo "<main class=\"container\" id=\"content\">

  <section class=\"header\"><h1>Update profile</h1></section>
  <form method=\"post\" action=\"member-edit-profile.php\" class=\"form-membership\">

    ";
        // line 12
        if (twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "message", [], "any", false, false, false, 12)) {
            echo "<div class=\"alert alert-danger\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "message", [], "any", false, false, false, 12), "html", null, true);
            echo "</div>";
        }
        // line 13
        echo "
    <div class=\"form-group\">
      <label for=\"forename\">Forename: </label>
      <input type=\"text\" name=\"forename\" value=\"";
        // line 16
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 16), "html", null, true);
        echo "\" id=\"forename\" class=\"form-control\" />
      <span class=\"errors\">";
        // line 17
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "forename", [], "any", false, false, false, 17), "html", null, true);
        echo "</span><br>
    </div>

    <div class=\"form-group\">
      <label for=\"surname\">Surname: </label>
      <input type=\"text\" name=\"surname\" value=\"";
        // line 22
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "surname", [], "any", false, false, false, 22), "html", null, true);
        echo "\"  id=\"surname\" class=\"form-control\" />
      <span class=\"errors\">";
        // line 23
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "surname", [], "any", false, false, false, 23), "html", null, true);
        echo "</span><br>
    </div>

    <div class=\"form-group\">
      <label for=\"email\">Email address: </label>
      <input type=\"email\" name=\"email\" value=\"";
        // line 28
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "email", [], "any", false, false, false, 28), "html", null, true);
        echo "\"  id=\"email\" class=\"form-control\" />
      <span class=\"errors\">";
        // line 29
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "email", [], "any", false, false, false, 29), "html", null, true);
        echo "</span><br>
    </div>

    <div class=\"form-group\">
      <button type=\"submit\" class=\"btn btn-primary\">update</button>
    </div>

  </form>
</main>
";
    }

    public function getTemplateName()
    {
        return "member-edit-profile.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  112 => 29,  108 => 28,  100 => 23,  96 => 22,  88 => 17,  84 => 16,  79 => 13,  73 => 12,  66 => 7,  62 => 6,  55 => 4,  48 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'layout.html' %}

{% block title %}Update profile{% endblock %}
{% block description %}Update profile for Creative Folk{% endblock %}

{% block content %}
<main class=\"container\" id=\"content\">

  <section class=\"header\"><h1>Update profile</h1></section>
  <form method=\"post\" action=\"member-edit-profile.php\" class=\"form-membership\">

    {% if errors.message %}<div class=\"alert alert-danger\">{{ errors.message }}</div>{% endif %}

    <div class=\"form-group\">
      <label for=\"forename\">Forename: </label>
      <input type=\"text\" name=\"forename\" value=\"{{ member.forename }}\" id=\"forename\" class=\"form-control\" />
      <span class=\"errors\">{{ errors.forename }}</span><br>
    </div>

    <div class=\"form-group\">
      <label for=\"surname\">Surname: </label>
      <input type=\"text\" name=\"surname\" value=\"{{ member.surname }}\"  id=\"surname\" class=\"form-control\" />
      <span class=\"errors\">{{ errors.surname }}</span><br>
    </div>

    <div class=\"form-group\">
      <label for=\"email\">Email address: </label>
      <input type=\"email\" name=\"email\" value=\"{{ member.email }}\"  id=\"email\" class=\"form-control\" />
      <span class=\"errors\">{{ errors.email }}</span><br>
    </div>

    <div class=\"form-group\">
      <button type=\"submit\" class=\"btn btn-primary\">update</button>
    </div>

  </form>
</main>
{% endblock %}", "member-edit-profile.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\member-edit-profile.html");
    }
}
