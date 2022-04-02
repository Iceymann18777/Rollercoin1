.class Lcom/tappx/a/h6$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/h6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/tappx/a/h6;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/h6$a;->a:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/h6$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
