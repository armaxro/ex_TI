# Description de la base de donnée
## Les tables : 
### locations
#### champ `id`
l'id de la location s'incrémente automatiquement donc pas besoin de le préciser lors des inserts.
peut également être utilisé pour accéder à une page détaillé sur l'image
#### champ `name`
le nom de l'image
#### champ `img_url`
un lien vers l'image, peut être utilisé pour les afficher
#### champ `adresse`
l'adresse de lieu où la photo a été prise
#### champ `long`
la longitude du lieu ou la photo a été prise
#### champ `lat`
la latitude du lieu ou la photo a été prise

### users
#### champ `id`
l'id de l'utilisateur, peut servir pour les clées étrangères
#### champ `username`
le nom de l'utilisateur (maximum 50 caractères)
#### champ `password`
le mot de passe hashé via password_hash (utilisez [password_verify](https://www.php.net/manual/en/function.password-verify.php) pour vérifier la validité d'un mot de passe)

### comments
#### champ `id`
l'id du commentaire
#### champ `message`
le message du commentaire
#### champ `user`
l'id de l'utilisateur (doit être l'id d'un utilisateur valide)
#### champ `location`
l'id de la location (doit être l'id d'une location valide)