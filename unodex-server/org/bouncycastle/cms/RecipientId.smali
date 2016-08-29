.class public abstract Lorg/bouncycastle/cms/RecipientId;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# static fields
.field public static final kek:I = 0x1

.field public static final keyAgree:I = 0x2

.field public static final keyTrans:I = 0x0

.field public static final password:I = 0x3


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/cms/RecipientId;->type:I

    return-void
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/cms/RecipientId;->type:I

    return v0
.end method
