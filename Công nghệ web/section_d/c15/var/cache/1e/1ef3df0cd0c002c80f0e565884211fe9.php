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

/* article-summaries.html */
class __TwigTemplate_df4518f742e985f54a93fa614430ac4a extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["articles"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["article"]) {
            // line 2
            echo "<article class=\"summary\">
  <a href=\"";
            // line 3
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "article.php?id=";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "id", [], "any", false, false, false, 3), "html", null, true);
            echo "\">
    ";
            // line 4
            if (twig_get_attribute($this->env, $this->source, $context["article"], "image_file", [], "any", false, false, false, 4)) {
                // line 5
                echo "      <img src=\"";
                echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
                echo "uploads/";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "image_file", [], "any", false, false, false, 5), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "image_alt", [], "any", false, false, false, 5), "html", null, true);
                echo "\">
    ";
            } else {
                // line 7
                echo "      <img src=\"";
                echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
                echo "uploads/blank.png\" alt=\"\">
    ";
            }
            // line 9
            echo "    <h2>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "title", [], "any", false, false, false, 9), "html", null, true);
            echo "</h2>
    <p>";
            // line 10
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "summary", [], "any", false, false, false, 10), "html", null, true);
            echo "</p>
  </a>
  <p class=\"credit\">
    Posted in <a href=\"";
            // line 13
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "category.php?id=";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "category_id", [], "any", false, false, false, 13), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "category", [], "any", false, false, false, 13), "html", null, true);
            echo "</a>
    by <a href=\"";
            // line 14
            echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
            echo "member.php?id=";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "member_id", [], "any", false, false, false, 14), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["article"], "author", [], "any", false, false, false, 14), "html", null, true);
            echo "</a>
  </p>
</article>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['article'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "article-summaries.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 14,  79 => 13,  73 => 10,  68 => 9,  62 => 7,  52 => 5,  50 => 4,  44 => 3,  41 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% for article in articles %}
<article class=\"summary\">
  <a href=\"{{ doc_root }}article.php?id={{ article.id }}\">
    {% if article.image_file %}
      <img src=\"{{ doc_root }}uploads/{{ article.image_file }}\" alt=\"{{ article.image_alt }}\">
    {% else %}
      <img src=\"{{ doc_root }}uploads/blank.png\" alt=\"\">
    {% endif %}
    <h2>{{ article.title }}</h2>
    <p>{{ article.summary }}</p>
  </a>
  <p class=\"credit\">
    Posted in <a href=\"{{ doc_root }}category.php?id={{ article.category_id }}\">{{ article.category }}</a>
    by <a href=\"{{ doc_root }}member.php?id={{ article.member_id }}\">{{ article.author }}</a>
  </p>
</article>
{% endfor %}", "article-summaries.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c15\\templates\\article-summaries.html");
    }
}
