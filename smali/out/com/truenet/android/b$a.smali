.class public final Lcom/truenet/android/b$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truenet/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/a/b/b/e;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/truenet/android/b$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/truenet/android/b$a;Ljava/lang/String;)Z
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/truenet/android/b$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "http://play.google.com"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 77
    invoke-static {p1, v0, v1, v2, v3}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    :goto_c
    const/4 v1, 0x1

    goto :goto_48

    :cond_e
    const-string v0, "https://play.google.com"

    .line 78
    invoke-static {p1, v0, v1, v2, v3}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    const-string v0, "http://itunes.apple.com"

    .line 79
    invoke-static {p1, v0, v1, v2, v3}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_c

    :cond_20
    const-string v0, "https://itunes.apple.com"

    .line 80
    invoke-static {p1, v0, v1, v2, v3}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_c

    :cond_29
    const-string v0, "http://"

    .line 81
    invoke-static {p1, v0, v1, v2, v3}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_48

    :cond_32
    const-string v0, "https://"

    .line 82
    invoke-static {p1, v0, v1, v2, v3}, La/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_48

    .line 83
    :cond_3b
    invoke-static {}, Lcom/truenet/android/b;->i()La/a/e/b;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, La/a/e/b;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_c

    :cond_48
    :goto_48
    return v1
.end method
