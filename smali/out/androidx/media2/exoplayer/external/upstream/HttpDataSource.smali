.class public interface abstract Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final REJECT_PAYWALL_TYPES:Landroidx/media2/exoplayer/external/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 223
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/util/Predicate;

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Landroidx/media2/exoplayer/external/util/Predicate;

    return-void
.end method
