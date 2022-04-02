.class public final Lcom/mopub/common/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/mopub/common/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/mopub/common/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Entry;)V
    .registers 3

    .line 729
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    .line 731
    invoke-static {p2}, Lcom/mopub/common/DiskLruCache$Entry;->access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->access$1800(Lcom/mopub/common/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->written:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$1;)V
    .registers 4

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Entry;
    .registers 1

    .line 723
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mopub/common/DiskLruCache$Editor;)[Z
    .registers 1

    .line 723
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Editor;->written:[Z

    return-object p0
.end method

.method static synthetic access$2302(Lcom/mopub/common/DiskLruCache$Editor;Z)Z
    .registers 2

    .line 723
    iput-boolean p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mopub/common/DiskLruCache;->access$2200(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    .line 830
    iget-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_7

    .line 832
    :try_start_4
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    iget-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->hasErrors:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 813
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/mopub/common/DiskLruCache;->access$2200(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    .line 814
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache$Entry;->access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_1c

    .line 816
    :cond_17
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/mopub/common/DiskLruCache;->access$2200(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    .line 818
    :goto_1c
    iput-boolean v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->committed:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 760
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_25

    .line 743
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 744
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    return-object v2

    .line 747
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/mopub/common/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_23
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    :try_start_21
    monitor-exit v0

    return-object v1

    .line 749
    :catch_23
    monitor-exit v0

    return-object v2

    .line 741
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_2b
    move-exception p1

    .line 751
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    monitor-enter v0

    .line 772
    :try_start_3
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_40

    .line 775
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 776
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 778
    :cond_18
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->entry:Lcom/mopub/common/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/mopub/common/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_46

    .line 781
    :try_start_1e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_46

    goto :goto_32

    .line 784
    :catch_24
    :try_start_24
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->access$1900(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_46

    .line 786
    :try_start_2d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_3a
    .catchall {:try_start_2d .. :try_end_32} :catchall_46

    .line 792
    :goto_32
    :try_start_32
    new-instance p1, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/mopub/common/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V

    monitor-exit v0

    return-object p1

    .line 789
    :catch_3a
    invoke-static {}, Lcom/mopub/common/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 773
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_46
    move-exception p1

    .line 793
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public set(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 800
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/DiskLruCacheUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 801
    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 803
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_13
    move-exception p1

    move-object v0, v1

    goto :goto_17

    :catchall_16
    move-exception p1

    :goto_17
    invoke-static {v0}, Lcom/mopub/common/DiskLruCacheUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
