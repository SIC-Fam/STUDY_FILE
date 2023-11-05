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

/* member-edit-picture.html */
class __TwigTemplate_d8e732abc226f7bee11edfa3f908536d extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'title' => [$this, 'block_title'],
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
        $this->parent = $this->loadTemplate("layout.html", "member-edit-picture.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Profile picture";
    }

    // line 4
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "<main class=\"container\" id=\"content\">

  ";
        // line 7
        if (twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "picture", [], "any", false, false, false, 7)) {
            // line 8
            echo "
  <section class=\"header\"><h1>Delete picture</h1></section>
  <form action=\"member-edit-picture.php\" method=\"POST\" class=\"form-membership\">
    <p class=\"center\">Click delete to remove your profile picture: <br><img src=\"uploads/";
            // line 11
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "picture", [], "any", false, false, false, 11), "html", null, true);
            echo "\" alt=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 11), "html", null, true);
            echo "\" class=\"profile\"></p>
    <input type=\"submit\" name=\"delete\" value=\"delete\" class=\"btn btn-primary\" />
    <a href=\"member.php?id=";
            // line 13
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "id", [], "any", false, false, false, 13), "html", null, true);
            echo "\" class=\"btn btn-danger\">cancel</a>
  </form>

  ";
        } else {
            // line 17
            echo "
  <section class=\"header\"><h1>Upload picture</h1></section>
  <form action=\"member-edit-picture.php\" method=\"POST\"  enctype=\"multipart/form-data\"  class=\"form-membership\">
    ";
            // line 20
            if (($context["errors"] ?? null)) {
                echo "<div class=\"alert alert-danger\">";
                echo twig_escape_filter($this->env, ($context["errors"] ?? null), "html", null, true);
                echo "</div>";
            }
            // line 21
            echo "    <div class=\"form-group\">
      <label for=\"image\">Select profile picture:</label>
      <input type=\"file\" name=\"image\" id=\"image\" />
    </div>
    <input type=\"submit\" name=\"upload\" value=\"Upload\" class=\"btn btn-primary\" />
  </form>

  ";
        }
        // line 29
        echo "</main>
";
    }

    public function getTemplateName()
    {
        return "member-edit-picture.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  104 => 29,  94 => 21,  88 => 20,  83 => 17,  76 => 13,  69 => 11,  64 => 8,  62 => 7,  58 => 5,  54 => 4,  47 => 2,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends \"layout.html\" %}
{% block title %}Profile picture{% endblock %}

{% block content %}
<main class=\"container\" id=\"content\">

  {% if member.picture %}

  <section class=\"header\"><h1>Delete picture</h1></section>
  <form action=\"member-edit-picture.php\" method=\"POST\" class=\"form-membership\">
    <p class=\"center\">Click delete to remove your profile picture: <br><img src=\"uploads/{{ member.picture }}\" alt=\"{{ member.forename }}\" class=\"profile\"></p>
    <input type=\"submit\" name=\"delete\" value=\"delete\" class=\"btn btn-primary\" />
    <a href=\"member.php?id={{ member.id }}\" class=\"btn btn-danger\">cancel</a>
  </form>

  {% else %}

  <section class=\"header\"><h1>Upload picture</h1></section>
  <form action=\"member-edit-picture.php\" method=\"POST\"  enctype=\"multipart/form-data\"  class=\"form-membership\">
    {% if errors %}<div class=\"alert alert-danger\">{{ errors }}</div>{% endif %}
    <div class=\"form-group\">
      <label for=\"image\">Select profile picture:</label>
      <input type=\"file\" name=\"image\" id=\"image\" />
    </div>
    <input type=\"submit\" name=\"upload\" value=\"Upload\" class=\"btn btn-primary\" />
  </form>

  {% endif %}
</main>
{% endblock %}", "member-edit-picture.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\member-edit-picture.html");
    }
}
