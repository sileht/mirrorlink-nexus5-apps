.class public interface abstract Lcom/mirrorlink/android/commonapi/ICommonAPIService;
.super Ljava/lang/Object;
.source "ICommonAPIService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;
    }
.end annotation


# virtual methods
.method public abstract applicationStarted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract applicationStopping(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCertificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)Lcom/mirrorlink/android/commonapi/ICertificationManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCommonAPIServiceApiLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConnectionManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)Lcom/mirrorlink/android/commonapi/IConnectionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getContextManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)Lcom/mirrorlink/android/commonapi/IContextManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDataServicesManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDataServicesListener;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceInfoManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceStatusManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDisplayManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)Lcom/mirrorlink/android/commonapi/IDisplayManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEventMappingManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNotificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/INotificationListener;)Lcom/mirrorlink/android/commonapi/INotificationManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
