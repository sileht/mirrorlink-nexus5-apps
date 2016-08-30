.class public final enum Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;
.super Ljava/lang/Enum;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/permission/RequestPermissionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

.field public static final enum GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

.field public static final enum NOT_GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

.field public static final enum NOT_GRANTED_FIXED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v2}, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    new-instance v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    const-string v1, "NOT_GRANTED"

    invoke-direct {v0, v1, v3}, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    new-instance v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    const-string v1, "NOT_GRANTED_FIXED"

    invoke-direct {v0, v1, v4}, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED_FIXED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED_FIXED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->ENUM$VALUES:[Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    return-object v0
.end method

.method public static values()[Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->ENUM$VALUES:[Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
