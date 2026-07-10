# k8s-argocd-learning

一个用于学习 Kubernetes 与 Argo CD GitOps 工作流的最小仓库。

## 目录

- `apps/demo/`：一个 NGINX Deployment 与 Service，由 Kustomize 组织。
- `argocd/demo-app.yaml`：让 Argo CD 持续同步 `apps/demo` 的 Application 定义。
- `scripts/`：本地 kind 集群常用操作。

## 学习路径

1. 修改 `apps/demo/deployment.yaml` 的 `replicas` 或镜像标签并推送到 GitHub。
2. 应用 Application：

   ```sh
   kubectl apply -f argocd/demo-app.yaml
   ```

3. 打开 Argo CD（另一个终端执行）：

   ```sh
   ./scripts/argocd-ui.sh
   ```

4. 初始账号是 `admin`，密码用：

   ```sh
   ./scripts/argocd-initial-password.sh
   ```

## 验证应用

```sh
kubectl get applications -n argocd
kubectl get pods -n demo
kubectl port-forward -n demo svc/demo-nginx 8081:80
```

然后访问 `http://localhost:8081`。
