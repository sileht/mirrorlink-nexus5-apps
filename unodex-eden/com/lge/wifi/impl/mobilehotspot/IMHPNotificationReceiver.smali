.class public interface abstract Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
.super Ljava/lang/Object;
.source "IMHPNotificationReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendP2PNotificaiton(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
