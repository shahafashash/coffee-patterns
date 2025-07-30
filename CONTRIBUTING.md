# 🤝 Contributing to Coffee Patterns

Thank you for your interest in contributing to **Coffee Patterns**! ☕ Your help makes this extension better for developers worldwide.

This guide will help you get started with contributing, whether you're fixing a bug, adding a new pattern, or improving documentation.

## 🎯 Quick Links

- [🚀 Getting Started](#-getting-started)
- [🔧 Development Setup](#-development-setup)
- [📝 Types of Contributions](#-types-of-contributions)
- [💻 Code Style Guidelines](#-code-style-guidelines)
- [🐛 Reporting Bugs](#-reporting-bugs)
- [💡 Suggesting Features](#-suggesting-features)
- [🔀 Pull Request Process](#-pull-request-process)
- [❓ Questions](#-questions)

## 🚀 Getting Started

### Prerequisites

Before contributing, make sure you have:

- **Git** installed on your system
- **Visual Studio Code** (latest version recommended)
- **Python 3.7+** for testing patterns
- **Node.js** (if working on extension configuration)

### 🍴 Fork and Clone

1. **Fork** the repository on GitHub
2. **Clone** your fork locally:

   ```bash
   git clone https://github.com/YOUR_USERNAME/coffee-patterns.git
   cd coffee-patterns
   ```

3. **Add** the original repository as upstream:

   ```bash
   git remote add upstream https://github.com/shahafashash/coffee-patterns.git
   ```

## 🔧 Development Setup

### 📁 Repository Structure

```
coffee-patterns/
├── 📄 README.md                    # Main documentation
├── 📄 package.json                 # Extension configuration
├── 📄 LICENSE                      # MIT License
├── 📄 CODE_OF_CONDUCT.md          # Community guidelines
├── 📄 CONTRIBUTING.md              # This file
├── 🖼️ images/                      # Icons, logos, and GIFs
│   ├── icon.png
│   ├── logo.png
│   └── gifs/
└── 📂 snippets/                    # Snippet files
    ├── coffee-patterns-python.code-snippets      # Main patterns
    └── coffee-blends-python.code-snippets        # Pattern combinations
```

### 🧪 Testing Your Changes

1. **Open** the project in VS Code
2. **Press** `F5` to launch Extension Development Host
3. **Create** a new Python file in the test environment
4. **Test** your snippets by typing triggers (e.g., `!singleton`)
5. **Verify** tab navigation and placeholder functionality

## 📝 Types of Contributions

| Type | Description | Skill Level | Examples |
|------|-------------|-------------|----------|
| 🐛 **Bug Fixes** | Fix broken snippets or documentation | Beginner | Typos, formatting issues |
| 📚 **Documentation** | Improve README, comments, examples | Beginner | Add usage examples, clarify instructions |
| 🔧 **Code Improvements** | Enhance existing patterns | Intermediate | Better type hints, code optimization |
| 🆕 **New Patterns** | Add missing design patterns | Advanced | New GoF patterns, modern patterns |
| 🎨 **Visual Design** | Improve icons, logos, media | Intermediate | Update graphics, create GIFs |
| 🔀 **Pattern Blends** | New pattern combinations | Advanced | Useful multi-pattern solutions |

## 💻 Code Style Guidelines

### 🐍 Python Pattern Standards

All snippets must follow these guidelines:

#### ✅ Required Elements

- **Future imports**: Start with `from __future__ import annotations`
- **Type annotations**: Use complete type hints for all functions and variables
- **Abstract base classes**: Import and use `ABC` and `abstractmethod` where appropriate
- **Docstrings**: Include comprehensive Google-style docstrings
- **Coffee themes**: Use coffee-related class names and examples where possible

#### 📝 Code Style

Follow the [Google Python Style Guide](https://google.github.io/styleguide/pyguide.html):

```python
from __future__ import annotations
from abc import ABC, abstractmethod
from typing import Any, Dict, List

class CoffeeFactory(ABC):
    """
    Abstract factory for creating coffee-related objects.

    This factory provides an interface for creating families of related
    coffee objects without specifying their concrete classes.
    """

    @abstractmethod
    def create_coffee(self) -> Coffee:
        """
        Create a coffee object.

        Returns:
            Coffee: A concrete coffee implementation.
        """
        pass
```

#### 🔧 Snippet Structure

Each snippet should include:

```json
{
    "Pattern Name": {
        "scope": "python",
        "prefix": "!pattern_name",
        "body": [
            "// Snippet code here with ${placeholders}"
        ],
        "description": "Clear description with examples"
    }
}
```

### 📋 Snippet Guidelines

| Element | Requirement | Example |
|---------|-------------|---------|
| **Scope** | Must be `"python"` | `"scope": "python"` |
| **Prefix** | Start with `!` | `"prefix": "!singleton"` |
| **Placeholders** | Use `${1:Name}` format | `${1:Product}`, `${2:operation}` |
| **Descriptions** | Include pattern explanation and coffee example | See existing patterns |

## 🐛 Reporting Bugs

Found a bug? Help us fix it! 🔧

### 📝 Before Reporting

1. **Search** existing issues to avoid duplicates
2. **Test** with the latest version of the extension
3. **Try** reproducing the issue in a clean VS Code environment

### 🐛 Bug Report Template

Use our structured bug report form:

[![Report Bug](https://img.shields.io/badge/🐛-Report%20Bug-red?style=for-the-badge)](https://github.com/shahafashash/coffee-patterns/issues/new?assignees=&labels=bug%2Ctriage&projects=&template=bug_report.yml&title=%5BBUG%5D%3A+)

**Include in your report:**
- 🖥️ Operating system and version
- 📝 VS Code version
- ☕ Coffee Patterns extension version
- 📋 Steps to reproduce
- ✅ Expected behavior
- ❌ Actual behavior
- 📸 Screenshots (if applicable)

## 💡 Suggesting Features

Have an idea for improvement? We'd love to hear it! 🚀

### 💭 Before Suggesting

1. **Check** if the feature already exists
2. **Search** existing feature requests
3. **Consider** if it fits the project's scope

### 🌟 Feature Request Template

Use our feature request form:

[![Request Feature](https://img.shields.io/badge/💡-Request%20Feature-blue?style=for-the-badge)](https://github.com/shahafashash/coffee-patterns/issues/new?assignees=&labels=feature%2Ctriage&projects=&template=feature_request.yml&title=%5BFEATURE+REQUEST%5D%3A+)

**Include in your request:**
- 🎯 Clear description of the feature
- 🤔 Why it would be useful
- 💡 Possible implementation ideas
- 📋 Any relevant examples or references

## 🔀 Pull Request Process

### 📋 Step-by-Step Guide

1. **🍴 Fork & Clone**
   ```bash
   git clone https://github.com/shahafashash/coffee-patterns.git
   cd coffee-patterns
   ```

2. **🌿 Create Feature Branch**
   ```bash
   git checkout -b feature/amazing-pattern
   # or
   git checkout -b fix/bug-description
   # or
   git checkout -b docs/improvement-description
   ```

3. **💻 Make Changes**
   - Follow our [code style guidelines](#-code-style-guidelines)
   - Test your changes thoroughly
   - Update documentation if needed

4. **✅ Test Your Changes**
   - Open VS Code in the project directory
   - Press `F5` to launch Extension Development Host
   - Test your snippets in a Python file
   - Verify tab navigation works correctly

5. **📝 Commit Changes**
   ```bash
   git add .
   git commit -m "feat: add amazing new pattern

   - Add comprehensive Singleton pattern
   - Include coffee-themed examples
   - Add proper type annotations
   - Update documentation"
   ```

6. **🚀 Push to Your Fork**
   ```bash
   git push origin feature/amazing-pattern
   ```

7. **🎯 Create Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Fill out the PR template
   - Link any related issues

### 📋 Pull Request Guidelines

**✅ Before submitting, ensure:**

- [ ] 🧪 **Code tested** in VS Code Extension Development Host
- [ ] 📚 **Documentation updated** (if applicable)
- [ ] 🎨 **Code follows** our style guidelines
- [ ] ⚡ **Snippets work** with tab navigation
- [ ] 🏷️ **Type annotations** are complete and correct
- [ ] 📝 **Commit messages** are descriptive
- [ ] 🔗 **Related issues** are referenced

**📝 PR Template Checklist:**

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] 🐛 Bug fix
- [ ] ✨ New feature
- [ ] 📚 Documentation update
- [ ] 🔧 Code improvement

## Testing
- [ ] Tested in VS Code Extension Development Host
- [ ] Verified tab navigation works
- [ ] Tested with Python files

## Related Issues
Closes #123
```

### 🔄 Review Process

1. **🔍 Automated Checks**: GitHub Actions will run basic validation
2. **👥 Community Review**: Other contributors may provide feedback
3. **🔧 Maintainer Review**: Core maintainers will review code quality
4. **✅ Approval**: Once approved, your PR will be merged

**⏱️ Timeline**: Most PRs are reviewed within 2-7 days

## ❓ Questions

Need help? We're here for you! 🤝

### 💬 Ways to Get Help

| Type | Best For | Response Time |
|------|----------|---------------|
| 🐛 **GitHub Issues** | Bugs, feature requests | 1-3 days |
| 💭 **GitHub Discussions** | General questions, ideas | 1-7 days |
| 📧 **Direct Contact** | Sensitive matters | 3-7 days |

### 🆘 Common Questions

**Q: How do I test my snippet changes?**
A: Press `F5` in VS Code to launch Extension Development Host, then test your snippets in a Python file.

**Q: What should I name my branch?**
A: Use descriptive names like `feature/observer-pattern`, `fix/singleton-typo`, or `docs/readme-improvement`.

**Q: How do I add a new design pattern?**
A: Add it to the appropriate snippets file, follow the existing structure, and include comprehensive documentation.

**Q: Can I contribute if I'm new to design patterns?**
A: Absolutely! Start with documentation improvements or bug fixes to get familiar with the project.

### 🎓 Learning Resources

- 📚 [Design Patterns: Elements of Reusable Object-Oriented Software](https://en.wikipedia.org/wiki/Design_Patterns)
- 🌐 [Refactoring.Guru Design Patterns](https://refactoring.guru/design-patterns)
- 🐍 [Python Design Patterns Guide](https://python-patterns.guide/)
- 📖 [VS Code Extension API](https://code.visualstudio.com/api)

## 🤝 Code of Conduct

This project follows our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you agree to uphold this code. Please report unacceptable behavior to the project maintainers.

## 🙏 Thank You!

Every contribution, no matter how small, makes Coffee Patterns better for the entire developer community. Thank you for taking the time to contribute! ☕✨

---

<div align="center">

**Happy Contributing! ☕🚀**

*Questions? Don't hesitate to ask! We're here to help.*

[📝 Open an Issue](https://github.com/shahafashash/coffee-patterns/issues/new) • [💬 Start a Discussion](https://github.com/shahafashash/coffee-patterns/discussions) • [⭐ Star the Project](https://github.com/shahafashash/coffee-patterns)

</div>