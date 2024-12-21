
# AI-Powered Content Aggregator

## Project Description
The AI-Powered Content Aggregator is a decentralized platform built on blockchain technology that allows users to submit and share content such as articles, blogs, and media links. Each content submission is tracked on the blockchain, ensuring transparency, immutability, and proper attribution to content creators. 

The smart contract allows for content submission, retrieval, and secure management by the contract owner. By utilizing a decentralized system, the project guarantees that content creators are rewarded for their work in a transparent and secure manner, and the content itself is stored permanently on the blockchain.

## Contract Address
**Contract Address**
0xb38e6f5b351e2e2308b70e45726400ea46705d2a
![image](https://github.com/user-attachments/assets/75e5c9f2-d61c-4371-ae65-ce4b326f431d)


## Project Vision
The vision of the AI-Powered Content Aggregator is to empower content creators by providing them a decentralized, transparent platform for submitting and managing content. This platform will serve as a foundation for future AI-powered content aggregation, recommendation, and categorization. 

The key goals of the project include:
- **Fair and Transparent Content Creation**: Allow content creators to submit their work securely and be attributed properly.
- **Decentralized Platform**: Ensure that no central authority can censor or manipulate the content.
- **Future Integration with AI**: Develop intelligent systems to automate content aggregation and improve content recommendations based on user preferences.

## Key Features
1. **Content Submission**:
   - Users can submit content by providing a title and URL.
   - Each submission is uniquely identified by an auto-incrementing content ID.

2. **Content Tracking**:
   - Each piece of content is stored in a decentralized manner on the blockchain, ensuring that content attribution is permanent and transparent.
   - Content data includes the title, URL, and the author's address.

3. **Public Access**:
   - The content can be publicly accessed via the `getContent()` function, allowing anyone to view the details of any content submitted by users.
   - The contract supports querying content by its unique content ID.

4. **Owner Control**:
   - The contract owner (the deployer) has the ability to withdraw funds accumulated in the contract's balance via the `withdraw()` function.
   - Only the owner can perform administrative actions, providing control over the contract’s funds.

5. **Event Logging**:
   - Whenever a new piece of content is submitted, the contract emits a `ContentSubmitted` event. This makes it easier to track content submission activities in real-time.
   
6. **Security & Transparency**:
   - The contract ensures that once content is submitted, it is immutable and securely stored on the blockchain.
   - The owner of the contract can only withdraw funds, providing an added layer of control over finances.

### Future Improvements
- Integrate AI algorithms for content curation.
- Enhance user interface for better user experience.
- Implement reward system for content contributors.
