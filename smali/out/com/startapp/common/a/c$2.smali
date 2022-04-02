.class final Lcom/startapp/common/a/c$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/a/c;->j(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/Signature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)I
    .registers 3

    .line 723
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 720
    check-cast p1, Landroid/content/pm/Signature;

    check-cast p2, Landroid/content/pm/Signature;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/common/a/c$2;->a(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)I

    move-result p1

    return p1
.end method
