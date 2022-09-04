NC='\033[0m'
Blue='\e[34m'

echo -e "${Blue}INFO${NC} Install Ansible..."
sudo apt install ansible
echo -e "${Blue}INFO${NC} Print ansible version..."
ansible --version
echo -e "${Blue}INFO${NC} Install required collections..."
ansible-galaxy collection install -r collections/requirements.yml
echo -e "${Blue}INFO${NC} Run playbook..."
ansible-playbook main.yml -K
