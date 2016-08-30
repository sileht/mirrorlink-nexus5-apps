.class public interface abstract Lcom/lge/app/permission/IClient;
.super Ljava/lang/Object;
.source "IClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/permission/IClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract connected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
