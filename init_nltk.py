import nltk
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

logger.info("Starting NLTK downloads...")

nltk.download('punkt')
logger.info("punkt downloaded")

nltk.download('wordnet')
logger.info("wordnet downloaded")

nltk.download('omw-1.4')
logger.info("omw-1.4 downloaded")

logger.info("NLTK downloads finished.")
