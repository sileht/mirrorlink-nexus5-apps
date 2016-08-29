.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;
.super Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;
.source "CommonAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public applicationStarted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "commonApiLevel"    # I

    .prologue
    .line 135
    const-string/jumbo v0, "MirrorLink_commonAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[START]applicationStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "commonApiLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public applicationStopping(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "MirrorLink_commonAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[START]applicationStopping:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public getCertificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)Lcom/mirrorlink/android/commonapi/ICertificationManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/ICertificationListener;

    .prologue
    .line 146
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCertificationManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get1(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/CertificationManager;

    .line 148
    .local v0, "certManager":Lcom/lge/mirrorlink/commonapi/CertificationManager;
    if-nez v0, :cond_3b

    .line 149
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-wrap0(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/ICertificationListener;)V

    .line 150
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CertificationManager;

    .end local v0    # "certManager":Lcom/lge/mirrorlink/commonapi/CertificationManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/CertificationManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)V

    .line 151
    .restart local v0    # "certManager":Lcom/lge/mirrorlink/commonapi/CertificationManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get1(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3b
    return-object v0
.end method

.method public getCommonAPIServiceApiLevel()I
    .registers 3

    .prologue
    .line 128
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "getCommonAPIServiceApiLevel():1"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectionManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)Lcom/mirrorlink/android/commonapi/IConnectionManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IConnectionListener;

    .prologue
    .line 158
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConnectionManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get3(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;

    .line 160
    .local v0, "connManager":Lcom/lge/mirrorlink/commonapi/ConnectionManager;
    if-nez v0, :cond_3b

    .line 161
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-wrap1(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IConnectionListener;)V

    .line 162
    new-instance v0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;

    .end local v0    # "connManager":Lcom/lge/mirrorlink/commonapi/ConnectionManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/ConnectionManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)V

    .line 163
    .restart local v0    # "connManager":Lcom/lge/mirrorlink/commonapi/ConnectionManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get3(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3b
    return-object v0
.end method

.method public getContextManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)Lcom/mirrorlink/android/commonapi/IContextManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IContextListener;

    .prologue
    .line 170
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContextManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get5(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/ContextManager;

    .line 172
    .local v0, "cnxtManager":Lcom/lge/mirrorlink/commonapi/ContextManager;
    if-nez v0, :cond_3b

    .line 173
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-virtual {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerContextListener(Lcom/mirrorlink/android/commonapi/IContextListener;)V

    .line 174
    new-instance v0, Lcom/lge/mirrorlink/commonapi/ContextManager;

    .end local v0    # "cnxtManager":Lcom/lge/mirrorlink/commonapi/ContextManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/ContextManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)V

    .line 175
    .restart local v0    # "cnxtManager":Lcom/lge/mirrorlink/commonapi/ContextManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get5(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_3b
    return-object v0
.end method

.method public getDataServicesManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDataServicesListener;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    .prologue
    .line 182
    const-string/jumbo v0, "MirrorLink_commonAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataServicesManager not supported package name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceInfoManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    .prologue
    .line 188
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceInfoManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get7(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;

    .line 190
    .local v0, "devInfoManager":Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;
    if-nez v0, :cond_3b

    .line 191
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-wrap2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)V

    .line 192
    new-instance v0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;

    .end local v0    # "devInfoManager":Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)V

    .line 193
    .restart local v0    # "devInfoManager":Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get7(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_3b
    return-object v0
.end method

.method public getDeviceStatusManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    .prologue
    .line 200
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceStatusManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get9(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;

    .line 202
    .local v0, "devStatusManager":Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;
    if-nez v0, :cond_3b

    .line 203
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-wrap3(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)V

    .line 204
    new-instance v0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;

    .end local v0    # "devStatusManager":Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)V

    .line 205
    .restart local v0    # "devStatusManager":Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get9(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_3b
    return-object v0
.end method

.method public getDisplayManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)Lcom/mirrorlink/android/commonapi/IDisplayManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IDisplayListener;

    .prologue
    .line 212
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDisplayManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get11(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/DisplayManager;

    .line 214
    .local v0, "dispManager":Lcom/lge/mirrorlink/commonapi/DisplayManager;
    if-nez v0, :cond_3b

    .line 215
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-wrap4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IDisplayListener;)V

    .line 216
    new-instance v0, Lcom/lge/mirrorlink/commonapi/DisplayManager;

    .end local v0    # "dispManager":Lcom/lge/mirrorlink/commonapi/DisplayManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/DisplayManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)V

    .line 217
    .restart local v0    # "dispManager":Lcom/lge/mirrorlink/commonapi/DisplayManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get11(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_3b
    return-object v0
.end method

.method public getEventMappingManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    .prologue
    .line 224
    const-string/jumbo v1, "MirrorLink_commonAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEventMappingManager package name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get13(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;

    .line 226
    .local v0, "evtMapManager":Lcom/lge/mirrorlink/commonapi/EventMappingManager;
    if-nez v0, :cond_3b

    .line 227
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-virtual {v1, p2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerEventMappingListener(Lcom/mirrorlink/android/commonapi/IEventMappingListener;)V

    .line 228
    new-instance v0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;

    .end local v0    # "evtMapManager":Lcom/lge/mirrorlink/commonapi/EventMappingManager;
    invoke-direct {v0, p1, p2}, Lcom/lge/mirrorlink/commonapi/EventMappingManager;-><init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)V

    .line 229
    .restart local v0    # "evtMapManager":Lcom/lge/mirrorlink/commonapi/EventMappingManager;
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get13(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_3b
    return-object v0
.end method

.method public getNotificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/INotificationListener;)Lcom/mirrorlink/android/commonapi/INotificationManager;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mirrorlink/android/commonapi/INotificationListener;

    .prologue
    .line 236
    const-string/jumbo v0, "MirrorLink_commonAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNotificationManager not supported package name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method
