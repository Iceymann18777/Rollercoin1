.class public Lcom/tappx/a/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/media/MediaScannerConnection;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/tappx/a/a4$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/a4$a;-><init>(Lcom/tappx/a/a4;)V

    iput-object v0, p0, Lcom/tappx/a/a4;->e:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/a4;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/a4;)Landroid/media/MediaScannerConnection;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/a4;->b:Landroid/media/MediaScannerConnection;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/a4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/a4;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/tappx/a/a4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/a4;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tappx/a/a4;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lcom/tappx/a/a4;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/a4;->d:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object p2, p0, Lcom/tappx/a/a4;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tappx/a/a4;->e:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-direct {p1, p2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lcom/tappx/a/a4;->b:Landroid/media/MediaScannerConnection;

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
