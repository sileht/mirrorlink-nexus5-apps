.class public Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure5;
.super Lorg/aspectj/runtime/internal/AroundClosure;
.source "LockPatternUtilsEx.java"


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/AroundClosure;->state:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtilsEx;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->updateEncryptionPassword_aroundBody4(Lcom/android/internal/widget/LockPatternUtilsEx;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
