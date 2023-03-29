lint: .ylint .alint

.alint: */*.yml .config/ansible-lint.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.ylint: */*.yml .config/yamllint
	yamllint --config-file=.config/yamllint .
	@touch $@

push:
	@mkdir -p /mnt/hgfs/shared/ansible-role-opsys-unix
	rsync -a * /mnt/hgfs/shared/ansible-role-opsys-unix

clean:
	@/bin/rm -f .alint .ylint
