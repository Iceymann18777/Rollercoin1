.class public Lcom/tappx/a/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s1;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tappx/a/s1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/s1;->b()V

    return-void
.end method
