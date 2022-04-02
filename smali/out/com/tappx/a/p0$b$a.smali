.class Lcom/tappx/a/p0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/p0$b$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/p0$b$a;->a:Landroid/content/Context;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/p0$b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lcom/tappx/a/p0$b$a$a;

    iget-object v1, p0, Lcom/tappx/a/p0$b$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/p0$b$a$a;-><init>(Landroid/content/Context;Lcom/tappx/a/p0$a;)V

    invoke-virtual {v0}, Lcom/tappx/a/p0$b$a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/webkit/WebView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroid/webkit/WebSettings;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_1c
    :try_start_1c
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget-object v5, p0, Lcom/tappx/a/p0$b$a;->a:Landroid/content/Context;

    aput-object v5, v0, v3

    const/4 v5, 0x0

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_35

    if-nez v2, :cond_34

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_34
    return-object v0

    :catchall_35
    move-exception v0

    if-nez v2, :cond_3b

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 9
    :cond_3b
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 3
    :try_start_6
    invoke-direct {p0}, Lcom/tappx/a/p0$b$a;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 9
    :catch_b
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/tappx/a/p0$b$a;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 13
    :catch_10
    invoke-direct {p0}, Lcom/tappx/a/p0$b$a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "http.agent"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    return-object v0
.end method
