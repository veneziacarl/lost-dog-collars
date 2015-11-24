-- YOUR SQL CODE GOES HERE



-- Which collars have a known owner? Display only collars with known owners and those owners' names.
SELECT dog_owners.name AS "Owner's Name", lost_dog_collars.dog_name AS "Dog's Name"
FROM dog_owners
JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);

-- For which collars is there no known owner? Display only collars without known owners.
SELECT lost_dog_collars.dog_name AS "Dog's Name"
FROM lost_dog_collars
LEFT JOIN dog_owners
ON (lost_dog_collars.dog_name = dog_owners.dog_name)
WHERE dog_owners.dog_name IS NULL;

-- What collars are in our possession? Display all collars in our possession. If an owner exists for a given collar, display that also.
SELECT dog_owners.name AS "Owner's Name", lost_dog_collars.dog_name AS "Dog's Name"
FROM dog_owners
RIGHT OUTER JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);

-- What owners do we know about? Display all owners known to us. If a collar matches that owner, display the collar also.
SELECT dog_owners.name AS "Owner's Name", lost_dog_collars.dog_name AS "Dog's Name"
FROM dog_owners
LEFT OUTER JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);
