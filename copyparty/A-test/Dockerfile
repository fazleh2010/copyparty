FROM mediawiki:latest

# Install git and composer for managing dependencies (if needed)
RUN apt-get update && apt-get install -y git unzip php-zip php-mbstring php-xml && rm -rf /var/lib/apt/lists/*

# Switch to the MediaWiki extensions directory
WORKDIR /var/www/html/extensions

# Clone Semantic MediaWiki extension
RUN git clone --branch REL1_39 https://gerrit.wikimedia.org/r/mediawiki/extensions/SemanticMediaWiki.git SemanticMediaWiki

# Switch to SemanticMediaWiki directory and install dependencies
WORKDIR /var/www/html/extensions/SemanticMediaWiki

# Use composer to install PHP dependencies
RUN php composer.phar install --no-dev

# Return to the MediaWiki root directory
WORKDIR /var/www/html

