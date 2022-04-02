.class public final Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;
.super Ljava/lang/Object;
.source "ExoPlayerLibraryInfo.java"


# static fields
.field private static final registeredModules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredModulesString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    const-string v0, "goog.exo.core"

    .line 70
    sput-object v0, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized registerModule(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 88
    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_38

    .line 90
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registeredModules()Ljava/lang/String;
    .registers 2

    const-class v0, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
