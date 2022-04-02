.class public Lcom/tappx/a/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/tappx/a/v0;
    .registers 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/tappx/a/x0;

    invoke-direct {v0, p0}, Lcom/tappx/a/x0;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-object v0

    :catchall_6
    const-string p0, "krJOYpdJwB0z9kroej+tvgvunIIlLf/GdGehIr+r2OSbd/1jAuDbW6Z7w8Rb+zP0p97z+Ss5rCSYnT4eKWDNHxv5azbxwwxG3XGQe+SC2+3s6Z9kUQ084l1qIWDEae3FGWLeg8k8luby4GoV6Q0RRg"

    .line 4
    invoke-static {p0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance p0, Lcom/tappx/a/w0;

    invoke-direct {p0}, Lcom/tappx/a/w0;-><init>()V

    return-object p0
.end method
