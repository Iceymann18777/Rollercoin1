.class public Lcom/startapp/a/a/c/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/startapp/a/a/c/d;->a:C

    .line 65
    new-instance v0, Lcom/startapp/a/a/c/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/startapp/a/a/c/e;-><init>(I)V

    .line 66
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 68
    invoke-virtual {v0}, Lcom/startapp/a/a/c/e;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/a/a/c/d;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 162
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1

    .line 133
    invoke-static {p0}, Lcom/startapp/a/a/c/d;->a(Ljava/io/Closeable;)V

    return-void
.end method
