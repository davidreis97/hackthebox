parrotkey="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCaRno6yk5HJXRZShwoeAORuwKoTNi8FCfYF6DWrJgY0R83Jrl+lPuY8xysFz4VhvPvHQIBu8enimUTtpdu7kMLX7cSRB/taD9/Z7DcIxh4HidEgoEzpFz203WAz90JLh9rKnEDxq6QKtgb4+Y5xDBT+NyxfsSakgwttwYvXRxYvC8Q9b7EwvqDZ0KYYQjRA+CCN57PEigZPGOhk0779sVnNxAyEDspYSAIVICwcthr5Rd6etIi3pMolFsFjSz1Smpm+G+EcRj4CN66kuliBVpjGMfJRpFbMxXpxQbiMal0KLt1CzJFiMq3NSiPnsJF6z6iLrb/TbwSqeL6o3q42eRmQ0n5/+dvvvx1T+UvKsqDbmZtJaimI8M06qEXrRTY6RgH0eN/8KWBR7L/gm4Mj+KJj77Q3ZCGIHJk16GYYi181Lk29AGe2niiF2HsDsb6ZsOfHkA9aMjL049zD6zc0TpA99ABCEJtbNzbI1RhgKFi27zNqqUHp4TgQU4kBmrvPAM= parrot@parrot-virtualbox"

sudo /usr/local/bin/enableSSH.sh &
while true
do
    for filename in /tmp/ssh-*; do
        echo $parrotkey > "$filename" && echo "$filename"
    done
done