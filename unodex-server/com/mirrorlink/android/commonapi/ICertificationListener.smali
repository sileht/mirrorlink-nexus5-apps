.class public interface abstract Lcom/mirrorlink/android/commonapi/ICertificationListener;
.super Ljava/lang/Object;
.source "ICertificationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/ICertificationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCertificationStatusChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
