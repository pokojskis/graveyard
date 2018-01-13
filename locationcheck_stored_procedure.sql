CREATE DEFINER=`root`@`localhost` PROCEDURE `getLocation`()
BEGIN
	SELECT location FROM grave;
END