.class Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/common/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .registers 3

    .line 839
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/mopub/common/DiskLruCache$Editor;

    .line 840
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V
    .registers 4

    .line 838
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    .line 863
    :catch_6
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->access$2302(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    :goto_c
    return-void
.end method

.method public flush()V
    .registers 3

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    .line 871
    :catch_6
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->access$2302(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    :goto_c
    return-void
.end method

.method public write(I)V
    .registers 3

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    .line 847
    :catch_6
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mopub/common/DiskLruCache$Editor;->access$2302(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    :goto_c
    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    .line 855
    :catch_6
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mopub/common/DiskLruCache$Editor;->access$2302(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    :goto_c
    return-void
.end method
