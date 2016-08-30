.class public interface abstract Lcom/lge/app/permission/GuideUiProvider;
.super Ljava/lang/Object;
.source "GuideUiProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAppName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract getDisabledFeatures(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract getReasonForRequestingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract getRequestPermissionsActivity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/app/permission/RequestPermissionsActivity;",
            ">;"
        }
    .end annotation
.end method
