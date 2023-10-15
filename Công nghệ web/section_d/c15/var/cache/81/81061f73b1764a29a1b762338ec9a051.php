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

/* layout.html */
class __TwigTemplate_234e2c99e3b1545df09ab288e801bee0 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'title' => [$this, 'block_title'],
            'description' => [$this, 'block_description'],
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en-US\">
  <head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <title>";
        // line 6
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
    <meta name=\"description\" content=\"";
        // line 7
        $this->displayBlock('description', $context, $blocks);
        echo "\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 8
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "css/styles.css\">
    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\"> 
    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap\">
    <link rel=\"shortcut icon\" type=\"image/png\" href=\"";
        // line 11
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "img/favicon.ico\">
  </head>
  <body>
    <header>
      <div class=\"container\">
        <a class=\"skip-link\" href=\"#content\">Skip to content</a>
        <div class=\"logo\">
          <a href=\"";
        // line 18
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "index.php\"><img src=\"";
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "img/logo.png\" alt=\"Creative Folk\"></a>
        </div>
        <nav>
          <button id=\"toggle-navigation\" aria-expanded=\"false\">
            <span class=\"icon-menu\"></span><span class=\"hidden\">Menu</span>
          </button>
          <ul id=\"menu\">
            ";
        // line 25
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["navigation"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
            // line 26
            echo "            ";
            if ((twig_get_attribute($this->env, $this->source, $context["link"], "navigation", [], "any", false, false, false, 26) == 1)) {
                // line 27
                echo "              <li><a href=\"";
                echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
                echo "category.php?id=";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["link"], "id", [], "any", false, false, false, 27), "html", null, true);
                echo "\"
              ";
                // line 28
                if ((($context["section"] ?? null) == twig_get_attribute($this->env, $this->source, $context["link"], "id", [], "any", false, false, false, 28))) {
                    echo " class=\"on\"";
                }
                echo ">
                ";
                // line 29
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["link"], "name", [], "any", false, false, false, 29), "html", null, true);
                echo "</a></li>
            ";
            }
            // line 31
            echo "            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 32
        echo "            <li><a href=\"";
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "search.php\">
              <span class=\"icon-search\"></span><span class=\"search-text\">Search</span>
            </a></li>
          </ul>
        </nav>
      </div><!-- /.container -->
    </header>
    ";
        // line 39
        $this->displayBlock('content', $context, $blocks);
        // line 40
        echo "    <footer>
      <div class=\"container\">
        <a href=\"";
        // line 42
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "contact.php\">Contact Us</a>
        <span class=\"copyright\">&copy; Creative Folk ";
        // line 43
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now", "Y"), "html", null, true);
        echo "</span>
      </div>
    </footer>
    <script src=\"";
        // line 46
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "js/site.js\"></script>
  </body>
</html>";
    }

    // line 6
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Creative Folk";
    }

    // line 7
    public function block_description($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Hire ceatives";
    }

    // line 39
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
    }

    public function getTemplateName()
    {
        return "layout.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  162 => 39,  155 => 7,  148 => 6,  141 => 46,  135 => 43,  131 => 42,  127 => 40,  125 => 39,  114 => 32,  108 => 31,  103 => 29,  97 => 28,  90 => 27,  87 => 26,  83 => 25,  71 => 18,  61 => 11,  55 => 8,  51 => 7,  47 => 6,  40 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html lang=\"en-US\">
  <head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <title>{% block title %}Creative Folk{% endblock %}</title>
    <meta name=\"description\" content=\"{% block description %}Hire ceatives{% endblock %}\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"{{ doc_root }}css/styles.css\">
    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\"> 
    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap\">
    <link rel=\"shortcut icon\" type=\"image/png\" href=\"{{ doc_root }}img/favicon.ico\">
  </head>
  <body>
    <header>
      <div class=\"container\">
        <a class=\"skip-link\" href=\"#content\">Skip to content</a>
        <div class=\"logo\">
          <a href=\"{{ doc_root }}index.php\"><img src=\"{{ doc_root }}img/logo.png\" alt=\"Creative Folk\"></a>
        </div>
        <nav>
          <button id=\"toggle-navigation\" aria-expanded=\"false\">
            <span class=\"icon-menu\"></span><span class=\"hidden\">Menu</span>
          </button>
          <ul id=\"menu\">
            {% for link in navigation %}
            {% if (link.navigation == 1) %}
              <li><a href=\"{{ doc_root }}category.php?id={{ link.id }}\"
              {% if (section == link.id) %} class=\"on\"{% endif %}>
                {{ link.name }}</a></li>
            {% endif %}
            {% endfor %}
            <li><a href=\"{{ doc_root }}search.php\">
              <span class=\"icon-search\"></span><span class=\"search-text\">Search</span>
            </a></li>
          </ul>
        </nav>
      </div><!-- /.container -->
    </header>
    {% block content %}{% endblock %}
    <footer>
      <div class=\"container\">
        <a href=\"{{ doc_root }}contact.php\">Contact Us</a>
        <span class=\"copyright\">&copy; Creative Folk {{ 'now'|date('Y') }}</span>
      </div>
    </footer>
    <script src=\"{{ doc_root }}js/site.js\"></script>
  </body>
</html>", "layout.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c15\\templates\\layout.html");
    }
}
