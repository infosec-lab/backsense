# Contributing to BackSense

Thank you for your interest in contributing to BackSense! This document provides guidelines and information for contributors.

## 🚀 Getting Started

### Prerequisites
- Java 8 or higher
- Burp Suite Professional (for testing)
- Git

### Development Setup
1. Fork the repository
2. Clone your fork: `git clone https://github.com/yourusername/backsense.git`
3. Create a feature branch: `git checkout -b feature/your-feature-name`
4. Make your changes
5. Test thoroughly with Burp Suite Professional
6. Commit your changes: `git commit -m "Add feature: description"`
7. Push to your fork: `git push origin feature/your-feature-name`
8. Create a Pull Request

## 📋 Development Guidelines

### Code Style
- Follow Java naming conventions
- Use meaningful variable and method names
- Add comprehensive comments for complex logic
- Include JavaDoc for public methods

### Testing
- Test all changes with Burp Suite Professional
- Verify functionality with different target applications
- Test edge cases and error conditions
- Ensure no regression in existing features

### Error Handling
- Implement proper exception handling
- Provide meaningful error messages
- Log errors appropriately for debugging
- Graceful degradation when possible

### Performance
- Optimize for memory usage
- Minimize network requests
- Efficient payload generation
- Responsive UI updates

## 🐛 Bug Reports

When reporting bugs, please include:
- Detailed description of the issue
- Steps to reproduce
- Expected vs actual behavior
- Burp Suite version
- Java version
- Operating system
- Any error messages or logs

## 💡 Feature Requests

When requesting features, please include:
- Clear description of the feature
- Use case and benefits
- Implementation suggestions (if any)
- Priority level

## 🔧 Building from Source

### Using build.sh (Linux/Mac)
```bash
chmod +x build.sh
./build.sh
```

### Using build.bat (Windows)
```cmd
build.bat
```

### Manual Build
```bash
# Compile
javac -d target/classes src/main/java/burp/*.java

# Create JAR
cd target/classes
jar cfm ../../BackSense.jar ../../META-INF/MANIFEST.MF burp/* config/* META-INF/*
```

## 📝 Pull Request Guidelines

### Before Submitting
- [ ] Code follows style guidelines
- [ ] All tests pass
- [ ] Documentation is updated
- [ ] No sensitive data is included
- [ ] Error handling is implemented
- [ ] Performance is considered

### Pull Request Template
```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement
- [ ] Code refactoring

## Testing
- [ ] Tested with Burp Suite Professional
- [ ] Verified functionality
- [ ] Checked for regressions

## Screenshots (if applicable)
Add screenshots for UI changes

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No sensitive data included
```

## 🛡️ Security Guidelines

### Code Security
- Never include hardcoded credentials
- Validate all inputs
- Use secure coding practices
- Follow OWASP guidelines

### Testing Security
- Only test on authorized systems
- Respect rate limits
- Use test environments when possible
- Report security issues privately

## 📄 License

By contributing to BackSense, you agree that your contributions will be licensed under the MIT License.

## 🤝 Community

- Be respectful and inclusive
- Help other contributors
- Share knowledge and best practices
- Follow the project's code of conduct

## 📞 Contact

For questions or support:
- Create an issue on GitHub
- Join our community discussions
- Contact the maintainer: **Vikas Kumar** - Senior Security Consultant - [infoseclab005@gmail.com](mailto:infoseclab005@gmail.com)

## 🏆 **Credits**

**Vikas Kumar** - Senior Security Consultant 
📧 **Email**: [infoseclab005@gmail.com](mailto:infoseclab005@gmail.com)  
🔗 **LinkedIn**: [Vikas Kumar](https://www.linkedin.com/in/vikas-k-8b2a495b/)  

### Professional Background
- **Web Application Security Testing**
- **Penetration Testing & Red Teaming**
- **Security Tool Development**
- **SSRF & Server-Side Vulnerabilities**
- **Burp Suite Extension Development**

Thank you for contributing to BackSense! 🚀 
