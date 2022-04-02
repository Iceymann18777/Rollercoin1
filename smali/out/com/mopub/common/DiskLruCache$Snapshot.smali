.class public final Lcom/mopub/common/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/mopub/common/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .registers 7

    .line 677
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 679
    iput-wide p3, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 680
    iput-object p5, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 681
    iput-object p6, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/mopub/common/DiskLruCache$1;)V
    .registers 8

    .line 671
    invoke-direct/range {p0 .. p6}, Lcom/mopub/common/DiskLruCache$Snapshot;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 709
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 710
    invoke-static {v3}, Lcom/mopub/common/DiskLruCacheUtil;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public edit()Lcom/mopub/common/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->this$0:Lcom/mopub/common/DiskLruCache;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/common/DiskLruCache;->access$1600(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLength(I)J
    .registers 5

    .line 705
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
