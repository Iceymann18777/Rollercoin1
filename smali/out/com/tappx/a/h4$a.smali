.class final enum Lcom/tappx/a/h4$a;
.super Lcom/tappx/a/h4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tappx/a/h4;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/tappx/a/h4$a;)V

    return-void
.end method


# virtual methods
.method a(Lcom/tappx/a/b4;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/b4;->a:Lcom/tappx/a/b4;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
