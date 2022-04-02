.class public Lcom/tappx/a/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tappx/a/x3$d;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tappx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "noFillAd"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6
    invoke-interface {p2}, Lcom/tappx/a/x3$d;->a()V

    goto :goto_2d

    :cond_22
    const-string v0, "loadFinished"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 8
    invoke-interface {p2}, Lcom/tappx/a/x3$d;->c()V

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    return p1
.end method
