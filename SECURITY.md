# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 2.0.x   | :white_check_mark: |
| 1.0.x   | :x:                |

## Reporting a Vulnerability

We take security vulnerabilities seriously. If you discover a security issue in BackSense, please follow these guidelines:

### **DO NOT** create a public GitHub issue for security vulnerabilities.

### **DO** report security vulnerabilities privately:

1. **Email**: infoseclab005@gmail.com
2. **Subject**: [SECURITY] BackSense Vulnerability Report
3. **Encrypted Communication**: PGP key available upon request

### What to Include in Your Report

Please provide as much detail as possible:

- **Description**: Clear description of the vulnerability
- **Steps to Reproduce**: Detailed steps to reproduce the issue
- **Impact**: Potential impact and severity assessment
- **Proof of Concept**: If possible, include a PoC
- **Environment**: Burp Suite version, Java version, OS
- **Timeline**: When you discovered the vulnerability
- **Disclosure**: Your preferred disclosure timeline

### Response Timeline

- **Initial Response**: Within 48 hours
- **Status Update**: Within 7 days
- **Resolution**: Depends on severity and complexity
- **Public Disclosure**: Coordinated with reporter

### Severity Levels

| Level | Description | Response Time |
|-------|-------------|---------------|
| **Critical** | Remote code execution, data breach | 24-48 hours |
| **High** | Privilege escalation, data exposure | 3-7 days |
| **Medium** | Information disclosure, DoS | 1-2 weeks |
| **Low** | Minor issues, best practices | 2-4 weeks |

## Security Best Practices

### For Users

1. **Keep Updated**: Always use the latest version
2. **Scope Management**: Only scan authorized targets
3. **Rate Limiting**: Respect target server limits
4. **Environment**: Use test environments when possible
5. **Credentials**: Never include real credentials in tests

### For Developers

1. **Input Validation**: Validate all inputs
2. **Error Handling**: Don't expose sensitive information
3. **Secure Coding**: Follow OWASP guidelines
4. **Code Review**: Review all security-related changes
5. **Testing**: Test security features thoroughly

## Security Features

### Built-in Protections

- **Input Sanitization**: All inputs are validated and sanitized
- **Error Handling**: Secure error messages without information disclosure
- **Scope Enforcement**: Only scans in-scope targets
- **Rate Limiting**: Built-in rate limiting to prevent abuse
- **Safe Defaults**: Conservative settings by default

### Security Architecture

- **Sandboxed Execution**: Limited execution environment
- **Resource Limits**: Memory and CPU usage limits
- **Network Isolation**: Controlled network access
- **Audit Logging**: Comprehensive security event logging

## Responsible Disclosure

We follow responsible disclosure practices:

1. **Private Reporting**: Security issues reported privately
2. **Coordinated Disclosure**: Work with reporters on disclosure timeline
3. **Credit**: Acknowledge security researchers
4. **Transparency**: Public disclosure after fixes are available
5. **Documentation**: Document security improvements

## Security Updates

### Regular Updates

- **Monthly Security Reviews**: Regular security assessments
- **Dependency Updates**: Keep dependencies updated
- **Security Audits**: Periodic security audits
- **Penetration Testing**: Regular penetration testing

### Emergency Updates

- **Critical Vulnerabilities**: Immediate fixes for critical issues
- **Hotfixes**: Emergency patches when needed
- **Security Advisories**: Public security advisories
- **User Notifications**: Direct user notifications for critical issues

## Security Contacts

### Primary Security Contact
- **Email**: infoseclab005@gmail.com
- **Name**: Vikas Kumar - Senior Security Consultant & AI-Augmented Developer
- **LinkedIn**: [Vikas Kumar](https://www.linkedin.com/in/vikas-k-8b2a495b/)
- **Response Time**: 24-48 hours

### Backup Security Contact
- **Email**: infoseclab005@gmail.com (with [BACKUP] in subject)
- **Response Time**: 48-72 hours

## Security Acknowledgments

We thank the security researchers who have responsibly disclosed vulnerabilities:

- **2025**: [List will be updated as reports are received]

## Security Resources

### External Resources
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [Burp Suite Security](https://portswigger.net/burp/documentation/desktop/security)
- [Java Security](https://docs.oracle.com/javase/8/docs/technotes/guides/security/)

### Internal Resources



---

## Legal

By reporting security vulnerabilities, you agree to:

1. **Responsible Disclosure**: Follow responsible disclosure practices
2. **No Malicious Use**: Not use vulnerabilities maliciously
3. **Coordination**: Work with us on disclosure timeline
4. **Legal Compliance**: Comply with applicable laws

Thank you for helping keep BackSense secure! 🛡️ 