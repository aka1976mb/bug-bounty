# 0Din: The GenAI Bug Bounty Program

Welcome to the official repository for the 0Din Bug Bounty Program, a community-driven initiative to identify and mitigate vulnerabilities in AI and Machine Learning systems.

## Our Mission

Our goal is to create a more secure AI ecosystem. We partner with the global security research community to find and fix vulnerabilities in a wide range of AI/ML models and systems. We believe in rewarding researchers for their valuable contributions and providing a safe and transparent environment for security research.

## Getting Started

Ready to contribute? Here's how to get started:

1.  **Read the Vulnerability Disclosure Policy (VDP):** Our VDP is the most important document to read before you begin. It outlines our safe harbor statement, rules of engagement, and what to expect from us.
    *   [**Vulnerability Disclosure Policy**](VULNERABILITY_DISCLOSURE_POLICY.md)
2.  **Check the Scope:** See what systems and vulnerabilities are currently in scope for our program.
    *   [**Program Scope**](SCOPE.md)
3.  **Understand the Rewards:** We offer competitive bounties for valid reports. See our reward structure for details.
    *   [**Bounty Rewards**](REWARDS.md)

## How to Report a Vulnerability

All vulnerabilities should be reported by creating a new issue in this repository using our security report template.

*   [**Submit a New Security Report**](https://github.com/aka1976mb/bug-bounty/issues/new?template=security-report.md)

Please do not disclose any vulnerability information publicly until we have had a reasonable amount of time to investigate and resolve the issue.

## Program Management

This repository also contains a PowerShell script, `manage-0din.ps1`, for program administrators to manage bounties and issues.

To use the script, you can import it as a module in your PowerShell session:

```powershell
Import-Module ./manage-0din.ps1
```

You can then use the functions directly in your shell:

```powershell
# Get statistics on the program
Get-0DinStats

# Create a new bounty
New-0DinBounty -Title "New Bounty Title" -Amount "1000" -Description "Detailed description of the bounty."
```

## Community

We are committed to building a positive and collaborative community. All participants are expected to treat each other with respect. Any form of harassment will not be tolerated.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
