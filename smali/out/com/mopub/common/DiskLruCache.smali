.class public final Lcom/mopub/common/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/DiskLruCache$Entry;,
        Lcom/mopub/common/DiskLruCache$Editor;,
        Lcom/mopub/common/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,64}"

    .line 97
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 715
    new-instance v0, Lcom/mopub/common/DiskLruCache$2;

    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/mopub/common/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 150
    iput-wide v2, v0, Lcom/mopub/common/DiskLruCache;->size:J

    .line 152
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 161
    iput-wide v2, v0, Lcom/mopub/common/DiskLruCache;->nextSequenceNumber:J

    .line 164
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    new-instance v2, Lcom/mopub/common/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/mopub/common/DiskLruCache$1;-><init>(Lcom/mopub/common/DiskLruCache;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 183
    iput-object v1, v0, Lcom/mopub/common/DiskLruCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    .line 184
    iput v2, v0, Lcom/mopub/common/DiskLruCache;->appVersion:I

    .line 185
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    .line 186
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 187
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    .line 188
    iput v1, v0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    move-wide/from16 v1, p4

    .line 189
    iput-wide v1, v0, Lcom/mopub/common/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/DiskLruCache;)Ljava/io/Writer;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/common/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lcom/mopub/common/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/mopub/common/DiskLruCache;)I
    .registers 1

    .line 90
    iget p0, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    return p0
.end method

.method static synthetic access$1900(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/common/DiskLruCache;)Z
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .registers 1

    .line 90
    sget-object v0, Lcom/mopub/common/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache;->completeEdit(Lcom/mopub/common/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/common/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/mopub/common/DiskLruCache;I)I
    .registers 2

    .line 90
    iput p1, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .registers 3

    .line 615
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    .line 616
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/mopub/common/DiskLruCache$Editor;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 511
    :try_start_1
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache$Editor;->access$1400(Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Entry;

    move-result-object v0

    .line 512
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_10a

    const/4 v1, 0x0

    if-eqz p2, :cond_4d

    .line 517
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    .line 518
    :goto_15
    iget v3, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4d

    .line 519
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache$Editor;->access$1500(Lcom/mopub/common/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    .line 523
    invoke-virtual {v0, v2}, Lcom/mopub/common/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 524
    invoke-virtual {p1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_110

    .line 525
    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 520
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V

    .line 521
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 530
    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_81

    .line 531
    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_7b

    .line 533
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 534
    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 535
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 536
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 537
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 538
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 539
    iget-wide v7, p0, Lcom/mopub/common/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/mopub/common/DiskLruCache;->size:J

    goto :goto_7e

    .line 542
    :cond_7b
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 546
    :cond_81
    iget p1, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 547
    invoke-static {v0, p1}, Lcom/mopub/common/DiskLruCache$Entry;->access$702(Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;

    .line 548
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_c8

    .line 549
    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$602(Lcom/mopub/common/DiskLruCache$Entry;Z)Z

    .line 550
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mopub/common/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_ee

    .line 552
    iget-wide p1, p0, Lcom/mopub/common/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/mopub/common/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcom/mopub/common/DiskLruCache$Entry;->access$1202(Lcom/mopub/common/DiskLruCache$Entry;J)J

    goto :goto_ee

    .line 555
    :cond_c8
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 558
    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 560
    iget-wide p1, p0, Lcom/mopub/common/DiskLruCache;->size:J

    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_101

    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_108

    .line 561
    :cond_101
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/mopub/common/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_108
    .catchall {:try_start_33 .. :try_end_108} :catchall_110

    .line 563
    :cond_108
    monitor-exit p0

    return-void

    .line 513
    :cond_10a
    :try_start_10a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_110

    :catchall_110
    move-exception p1

    monitor-exit p0

    goto :goto_114

    :goto_113
    throw p1

    :goto_114
    goto :goto_113
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    .line 388
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 456
    :try_start_1
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->checkNotClosed()V

    .line 457
    invoke-direct {p0, p1}, Lcom/mopub/common/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_22

    if-eqz v0, :cond_20

    .line 460
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1200(Lcom/mopub/common/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_61

    cmp-long v4, v1, p2

    if-eqz v4, :cond_22

    .line 461
    :cond_20
    monitor-exit p0

    return-object v3

    :cond_22
    if-nez v0, :cond_2f

    .line 464
    :try_start_24
    new-instance v0, Lcom/mopub/common/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcom/mopub/common/DiskLruCache$Entry;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;Lcom/mopub/common/DiskLruCache$1;)V

    .line 465
    iget-object p2, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 466
    :cond_2f
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object p2
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_61

    if-eqz p2, :cond_37

    .line 467
    monitor-exit p0

    return-object v3

    .line 470
    :cond_37
    :goto_37
    :try_start_37
    new-instance p2, Lcom/mopub/common/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$1;)V

    .line 471
    invoke-static {v0, p2}, Lcom/mopub/common/DiskLruCache$Entry;->access$702(Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;

    .line 474
    iget-object p3, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_61

    .line 476
    monitor-exit p0

    return-object p2

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/mopub/common/DiskLruCacheUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/mopub/common/DiskLruCacheUtil;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .registers 3

    .line 571
    iget v0, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 572
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/mopub/common/DiskLruCache;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_9d

    if-lez p2, :cond_95

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 213
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    .line 218
    invoke-static {v0, v1, v2}, Lcom/mopub/common/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 223
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/mopub/common/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 224
    iget-object v1, v0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 226
    :try_start_3c
    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache;->readJournal()V

    .line 227
    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache;->processJournal()V

    .line 228
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/mopub/common/DiskLruCacheUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_58} :catch_59

    return-object v0

    :catch_59
    move-exception v1

    .line 232
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/mopub/common/DiskLruCache;->delete()V

    .line 243
    :cond_84
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v0, Lcom/mopub/common/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 245
    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache;->rebuildJournal()V

    return-object v0

    .line 207
    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/DiskLruCache$Entry;

    .line 328
    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    .line 329
    :goto_22
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_f

    .line 330
    iget-wide v4, p0, Lcom/mopub/common/DiskLruCache;->size:J

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mopub/common/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    .line 333
    invoke-static {v1, v2}, Lcom/mopub/common/DiskLruCache$Entry;->access$702(Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;

    .line 334
    :goto_38
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_4d

    .line 335
    invoke-virtual {v1, v3}, Lcom/mopub/common/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 336
    invoke-virtual {v1, v3}, Lcom/mopub/common/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 338
    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_51
    return-void
.end method

.method private readJournal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 250
    new-instance v1, Lcom/mopub/common/DiskLruCacheStrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/mopub/common/DiskLruCacheUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/DiskLruCacheStrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 252
    :try_start_10
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 257
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    const-string v7, "1"

    .line 258
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    iget v7, p0, Lcom/mopub/common/DiskLruCache;->appVersion:I

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    iget v4, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    .line 260
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string v4, ""

    .line 261
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_9a

    if-eqz v4, :cond_6c

    const/4 v0, 0x0

    .line 269
    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mopub/common/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_9a

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 275
    :catch_5f
    :try_start_5f
    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_9a

    .line 277
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 262
    :cond_6c
    :try_start_6c
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9a
    .catchall {:try_start_6c .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    .line 277
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a0

    :goto_9f
    throw v0

    :goto_a0
    goto :goto_9f
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9c

    add-int/lit8 v4, v1, 0x1

    .line 288
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 291
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2c

    const-string v5, "REMOVE"

    .line 292
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 293
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 297
    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 300
    :cond_2c
    iget-object v5, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/common/DiskLruCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_41

    .line 302
    new-instance v5, Lcom/mopub/common/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4, v6}, Lcom/mopub/common/DiskLruCache$Entry;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;Lcom/mopub/common/DiskLruCache$1;)V

    .line 303
    iget-object v7, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v4, 0x5

    if-eq v0, v3, :cond_64

    if-ne v1, v4, :cond_64

    const-string v7, "CLEAN"

    .line 306
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-static {v5, v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$602(Lcom/mopub/common/DiskLruCache$Entry;Z)Z

    .line 309
    invoke-static {v5, v6}, Lcom/mopub/common/DiskLruCache$Entry;->access$702(Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;

    .line 310
    invoke-static {v5, p1}, Lcom/mopub/common/DiskLruCache$Entry;->access$800(Lcom/mopub/common/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_86

    :cond_64
    if-ne v0, v3, :cond_79

    if-ne v1, v4, :cond_79

    const-string v4, "DIRTY"

    .line 311
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 312
    new-instance p1, Lcom/mopub/common/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$1;)V

    invoke-static {v5, p1}, Lcom/mopub/common/DiskLruCache$Entry;->access$702(Lcom/mopub/common/DiskLruCache$Entry;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;

    goto :goto_86

    :cond_79
    if-ne v0, v3, :cond_87

    const/4 v0, 0x4

    if-ne v1, v0, :cond_87

    const-string v0, "READ"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    :goto_86
    return-void

    .line 316
    :cond_87
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_9c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_a

    .line 349
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 352
    :cond_a
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/mopub/common/DiskLruCacheUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_eb

    :try_start_1d
    const-string v1, "libcore.io.DiskLruCache"

    .line 355
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 356
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 357
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 358
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v1, p0, Lcom/mopub/common/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 360
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v1, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/DiskLruCache$Entry;

    .line 366
    invoke-static {v2}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8c

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache$Entry;->access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5c

    .line 369
    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache$Entry;->access$1100(Lcom/mopub/common/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mopub/common/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_1d .. :try_end_ae} :catchall_e6

    goto :goto_5c

    .line 373
    :cond_af
    :try_start_af
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c2

    .line 377
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/mopub/common/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_c2
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/mopub/common/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/mopub/common/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/mopub/common/DiskLruCacheUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_e4
    .catchall {:try_start_af .. :try_end_e4} :catchall_eb

    .line 384
    monitor-exit p0

    return-void

    :catchall_e6
    move-exception v1

    .line 373
    :try_start_e7
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception v0

    monitor-exit p0

    goto :goto_ef

    :goto_ee
    throw v0

    :goto_ef
    goto :goto_ee
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 394
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 396
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    .line 397
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private trimToSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    :goto_0
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/mopub/common/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    .line 644
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 5

    .line 660
    sget-object v0, Lcom/mopub/common/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 662
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 629
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    .line 630
    monitor-exit p0

    return-void

    .line 632
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/DiskLruCache$Entry;

    .line 633
    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 634
    invoke-static {v1}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V

    goto :goto_16

    .line 637
    :cond_30
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->trimToSize()V

    .line 638
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    .line 640
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache;->close()V

    .line 656
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCacheUtil;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 452
    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/common/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 622
    :try_start_1
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->checkNotClosed()V

    .line 623
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->trimToSize()V

    .line 624
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 625
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Snapshot;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_1
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->checkNotClosed()V

    .line 408
    invoke-direct {p0, p1}, Lcom/mopub/common/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DiskLruCache$Entry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_87

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 411
    monitor-exit p0

    return-object v1

    .line 414
    :cond_14
    :try_start_14
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$600(Lcom/mopub/common/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_87

    if-nez v2, :cond_1c

    .line 415
    monitor-exit p0

    return-object v1

    .line 421
    :cond_1c
    :try_start_1c
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_87

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 423
    :goto_22
    :try_start_22
    iget v4, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_34

    .line 424
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/mopub/common/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_31} :catch_75
    .catchall {:try_start_22 .. :try_end_31} :catchall_87

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 438
    :cond_34
    :try_start_34
    iget v1, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    .line 439
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 440
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 441
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 444
    :cond_62
    new-instance v1, Lcom/mopub/common/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1200(Lcom/mopub/common/DiskLruCache$Entry;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/mopub/common/DiskLruCache$Snapshot;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/mopub/common/DiskLruCache$1;)V
    :try_end_73
    .catchall {:try_start_34 .. :try_end_73} :catchall_87

    monitor-exit p0

    return-object v1

    .line 428
    :catch_75
    :goto_75
    :try_start_75
    iget p1, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v2, p1, :cond_85

    .line 429
    aget-object p1, v8, v2

    if-eqz p1, :cond_85

    .line 430
    aget-object p1, v8, v2

    invoke-static {p1}, Lcom/mopub/common/DiskLruCacheUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_87

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 435
    :cond_85
    monitor-exit p0

    return-object v1

    :catchall_87
    move-exception p1

    monitor-exit p0

    goto :goto_8b

    :goto_8a
    throw p1

    :goto_8b
    goto :goto_8a
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .line 481
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 489
    :try_start_1
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 611
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 582
    :try_start_1
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->checkNotClosed()V

    .line 583
    invoke-direct {p0, p1}, Lcom/mopub/common/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_91

    .line 585
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$700(Lcom/mopub/common/DiskLruCache$Entry;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto/16 :goto_91

    .line 589
    :cond_1a
    :goto_1a
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_5c

    .line 590
    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_46

    .line 592
    :cond_2f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_46
    :goto_46
    iget-wide v2, p0, Lcom/mopub/common/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/mopub/common/DiskLruCache;->size:J

    .line 595
    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Entry;->access$1000(Lcom/mopub/common/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 598
    :cond_5c
    iget v0, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/common/DiskLruCache;->redundantOpCount:I

    .line 599
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 603
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_93

    .line 606
    :cond_8f
    monitor-exit p0

    return v1

    .line 586
    :cond_91
    :goto_91
    monitor-exit p0

    return v1

    :catchall_93
    move-exception p1

    monitor-exit p0

    goto :goto_97

    :goto_96
    throw p1

    :goto_97
    goto :goto_96
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 3

    monitor-enter p0

    .line 497
    :try_start_1
    iput-wide p1, p0, Lcom/mopub/common/DiskLruCache;->maxSize:J

    .line 498
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/mopub/common/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 499
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3

    monitor-enter p0

    .line 507
    :try_start_1
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
