.class public Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess$AjcClosure5;
.super Lorg/aspectj/runtime/internal/AroundClosure;
.source "PhoneNumberUtilsEx.java"


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
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/AroundClosure;->state:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->matchIntlPrefixAndCC_aroundBody4(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
