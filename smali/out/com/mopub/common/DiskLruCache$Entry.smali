.class final Lcom/mopub/common/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/mopub/common/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/mopub/common/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;)V
    .registers 3

    .line 892
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Entry;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p2, p0, Lcom/mopub/common/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 894
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->access$1800(Lcom/mopub/common/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Entry;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;Lcom/mopub/common/DiskLruCache$1;)V
    .registers 4

    .line 877
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Entry;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J
    .registers 1

    .line 877
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Entry;->lengths:[J

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 1

    .line 877
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/common/DiskLruCache$Entry;)J
    .registers 3

    .line 877
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/mopub/common/DiskLruCache$Entry;J)J
    .registers 3

    .line 877
    iput-wide p1, p0, Lcom/mopub/common/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z
    .registers 1

    .line 877
    iget-boolean p0, p0, Lcom/mopub/common/DiskLruCache$Entry;->readable:Z

    return p0
.end method

.method static synthetic access$602(Lcom/mopub/common/DiskLruCache$Entry;Z)Z
    .registers 2

    .line 877
    iput-boolean p1, p0, Lcom/mopub/common/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;
    .registers 1

    .line 877
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Entry;->currentEditor:Lcom/mopub/common/DiskLruCache$Editor;

    return-object p0
.end method

.method static synthetic access$702(Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;
    .registers 2

    .line 877
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Entry;->currentEditor:Lcom/mopub/common/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mopub/common/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    invoke-direct {p0, p1}, Lcom/mopub/common/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    array-length v0, p1

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Entry;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->access$1800(Lcom/mopub/common/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 912
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 913
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void

    .line 916
    :catch_1b
    invoke-direct {p0, p1}, Lcom/mopub/common/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 908
    :cond_20
    invoke-direct {p0, p1}, Lcom/mopub/common/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .registers 6

    .line 925
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Entry;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->access$1900(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .registers 6

    .line 929
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Entry;->this$0:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->access$1900(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_18

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 900
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 902
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
