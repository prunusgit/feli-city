.class public Lorg/xbmc/kodi/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbmc/kodi/Splash$FillCache;,
        Lorg/xbmc/kodi/Splash$StateMachine;
    }
.end annotation


# static fields
.field private static final Caching:I = 0x5

.field private static final CachingDone:I = 0x6

.field private static final Checking:I = 0x2

.field private static final ChecksDone:I = 0x3

.field private static final Clearing:I = 0x4

.field private static final InError:I = 0x1

.field private static final StartingXBMC:I = 0x63

.field private static final StorageChecked:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Kodi"

.field private static final Uninitialized:I = 0x0

.field private static final WaitingStorageChecked:I = 0x7


# instance fields
.field private fPackagePath:Ljava/io/File;

.field private fXbmcHome:Ljava/io/File;

.field private mCachingDone:Z

.field private mCpuinfo:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mExternalStorageChecked:Z

.field private mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLibs:Z

.field private mMounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mState:I

.field private mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

.field private mTextView:Landroid/widget/TextView;

.field public myAlertDialog:Landroid/app/AlertDialog;

.field private sPackagePath:Ljava/lang/String;

.field private sXbmcHome:Ljava/lang/String;

.field private sXbmcdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mMounts:Ljava/util/ArrayList;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;

    .line 69
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;

    .line 71
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 78
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    .line 80
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    .line 82
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    .line 83
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mInstallLibs:Z

    .line 146
    new-instance v0, Lorg/xbmc/kodi/Splash$StateMachine;

    invoke-direct {v0, p0, p0}, Lorg/xbmc/kodi/Splash$StateMachine;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    .line 148
    return-void
.end method

.method private CheckCpuFeature(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?i):.*?\\s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(?:\\s|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private MigrateUserData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/xbmc/kodi/Splash;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/org.xbmc.xbmc/files/.xbmc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v2}, Lorg/xbmc/kodi/Splash;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".kodi"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.kodi_data_was_migrated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    const-string v2, "Kodi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External_dir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    const-string v2, "Kodi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XBMC user data detected at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", migrating to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    const-string v1, "Kodi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_1
    const-string v0, "Kodi"

    const-string v1, "XBMC user data migrated to Kodi successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 435
    :cond_2
    const-string v0, "Kodi"

    const-string v1, "Error migrating XBMC user data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ParseCpuFeature()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/proc/cpuinfo"

    aput-object v4, v2, v3

    .line 446
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 448
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 450
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 451
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 459
    :goto_1
    return v0

    .line 454
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private ParseMounts()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x2

    .line 471
    const-string v2, "^(.+?)\\s+(.+?)\\s+(.+?)\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 472
    const-string v2, ""

    .line 475
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/cat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "/proc/mounts"

    aput-object v6, v4, v5

    .line 476
    new-instance v5, Ljava/lang/ProcessBuilder;

    invoke-direct {v5, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 478
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 479
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 480
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 481
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 491
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 492
    const-string v4, "Kodi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 494
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/dev/block/vold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/mnt/secure/asec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 496
    const-string v5, "Kodi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addind mount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v5, p0, Lorg/xbmc/kodi/Splash;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :catch_0
    move-exception v1

    .line 486
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 501
    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private SetupEnvironment()V
    .locals 6

    .prologue
    const/16 v0, 0x14

    const/4 v5, 0x0

    .line 303
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xbmc_env.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    const-string v2, "Kodi"

    const-string v3, "Loading xbmc_env.properties"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 308
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 309
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 310
    invoke-static {v2}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    .line 312
    const-string v1, "xbmc.home"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 316
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    .line 319
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 325
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    const-string v1, "xbmc.home"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    const-string v1, ""

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 331
    :cond_1
    const-string v1, "xbmc.data"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 333
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    .line 338
    const-wide/16 v2, 0x3e8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 342
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 345
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    .line 347
    const-string v0, "xbmc.data"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 357
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 362
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    .line 366
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/main."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 374
    :goto_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 375
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    .line 383
    new-instance v1, Lorg/xbmc/kodi/Splash$2;

    invoke-direct {v1, p0}, Lorg/xbmc/kodi/Splash$2;-><init>(Lorg/xbmc/kodi/Splash;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 391
    aget-object v0, v0, v5

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 395
    :cond_5
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    .line 398
    const-string v0, "Kodi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using OBB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_6
    :goto_4
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    const-string v0, "Kodi"

    const-string v1, "Cannot find xbmc_env properties file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 353
    :catch_1
    move-exception v0

    .line 354
    const-string v0, "Kodi"

    const-string v1, "Failed to open xbmc_env properties file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 401
    :cond_7
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 403
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 406
    const-string v0, "OBB not yet present. Please retry later..."

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 407
    const-string v0, "Kodi"

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto :goto_4

    .line 320
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 339
    :catch_3
    move-exception v2

    goto/16 :goto_1

    .line 370
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lorg/xbmc/kodi/Splash;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    return v0
.end method

.method static synthetic access$002(Lorg/xbmc/kodi/Splash;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lorg/xbmc/kodi/Splash;->mState:I

    return p1
.end method

.method static synthetic access$100(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/xbmc/kodi/Splash;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbmc/kodi/Splash;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xbmc/kodi/Splash;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    return p1
.end method

.method static synthetic access$402(Lorg/xbmc/kodi/Splash;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    return p1
.end method

.method static synthetic access$500(Lorg/xbmc/kodi/Splash;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->SetupEnvironment()V

    return-void
.end method

.method static synthetic access$600(Lorg/xbmc/kodi/Splash;)Ljava/io/File;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lorg/xbmc/kodi/Splash;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mInstallLibs:Z

    return v0
.end method

.method static synthetic access$900(Lorg/xbmc/kodi/Splash;)Lorg/xbmc/kodi/Splash$StateMachine;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 558
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 561
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 563
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 566
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ComponentInfo{org.xbmc.kodi/org.xbmc.kodi.Main}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->startXBMC()V

    .line 669
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 575
    const-string v0, ""

    .line 577
    :try_start_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 584
    :goto_1
    iget v3, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v3, v2, :cond_2

    .line 589
    :try_start_1
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 590
    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 591
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 592
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 594
    const-string v3, "native_arch"

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This Kodi package is not compatible with your device ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " vs. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "native_arch"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ").\nPlease check the <a href=\"http://wiki.kodi.tv/index.php?title=XBMC_for_Android_specific_FAQ\">Kodi Android wiki</a> for more information."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 596
    const-string v3, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v3, 0x1

    iput v3, p0, Lorg/xbmc/kodi/Splash;->mState:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 610
    :cond_2
    :goto_2
    iget v3, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v3, v2, :cond_3

    .line 611
    const-string v3, "arm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->ParseCpuFeature()Z

    move-result v0

    .line 615
    if-nez v0, :cond_6

    .line 616
    const-string v0, "Error! Cannot parse CPU features."

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 617
    const-string v0, "Kodi"

    iget-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 630
    :cond_3
    :goto_3
    const-string v0, "Kodi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External storage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    .line 634
    :cond_4
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    if-eqz v0, :cond_5

    .line 635
    iput v6, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 637
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->SetupEnvironment()V

    .line 638
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->MigrateUserData()V

    .line 640
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mInstallLibs:Z

    if-nez v0, :cond_5

    .line 641
    iput v7, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 642
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    .line 646
    :cond_5
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    if-eqz v0, :cond_9

    .line 647
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->startXBMC()V

    goto/16 :goto_0

    .line 578
    :catch_0
    move-exception v3

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Unexpected architecture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 580
    const-string v3, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_1

    .line 599
    :catch_1
    move-exception v3

    .line 600
    const-string v3, "Cannot find properties file"

    iput-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 601
    const-string v3, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_2

    .line 603
    :catch_2
    move-exception v3

    .line 604
    const-string v3, "Failed to open properties file"

    iput-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 605
    const-string v3, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_2

    .line 620
    :cond_6
    const-string v0, "neon"

    invoke-direct {p0, v0}, Lorg/xbmc/kodi/Splash;->CheckCpuFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "aarch64"

    invoke-direct {p0, v0}, Lorg/xbmc/kodi/Splash;->CheckCpuFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    .line 621
    :goto_4
    if-nez v0, :cond_3

    .line 622
    const-string v0, "This Kodi package is not compatible with your device (NEON).\nPlease check the <a href=\"http://wiki.kodi.tv/index.php?title=XBMC_for_Android_specific_FAQ\">Kodi Android wiki</a> for more information."

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 623
    const-string v0, "Kodi"

    iget-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_3

    :cond_8
    move v0, v1

    .line 620
    goto :goto_4

    .line 651
    :cond_9
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->setContentView(I)V

    .line 652
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;

    .line 653
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;

    .line 655
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-ne v0, v2, :cond_a

    .line 656
    const-string v0, "Error"

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p0, p0, v0, v1}, Lorg/xbmc/kodi/Splash;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 660
    :cond_a
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    if-nez v0, :cond_b

    .line 661
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->startWatchingExternalStorage()V

    .line 662
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 664
    :cond_b
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    if-nez v0, :cond_c

    .line 665
    new-instance v0, Lorg/xbmc/kodi/Splash$FillCache;

    invoke-direct {v0, p0, p0}, Lorg/xbmc/kodi/Splash$FillCache;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$FillCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 667
    :cond_c
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    invoke-virtual {v0, v7}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 285
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 287
    const-string v1, "Exit"

    new-instance v2, Lorg/xbmc/kodi/Splash$1;

    invoke-direct {v2, p0}, Lorg/xbmc/kodi/Splash$1;-><init>(Lorg/xbmc/kodi/Splash;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    .line 295
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 298
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method startWatchingExternalStorage()V
    .locals 2

    .prologue
    .line 521
    new-instance v0, Lorg/xbmc/kodi/Splash$3;

    invoke-direct {v0, p0}, Lorg/xbmc/kodi/Splash$3;-><init>(Lorg/xbmc/kodi/Splash;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 529
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/xbmc/kodi/Splash;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method protected startXBMC()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "kodi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 550
    const-class v1, Lorg/xbmc/kodi/Main;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 551
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->startActivity(Landroid/content/Intent;)V

    .line 553
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->finish()V

    .line 554
    return-void
.end method

.method stopWatchingExternalStorage()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    :cond_0
    return-void
.end method

.method updateExternalStorageState()V
    .locals 4

    .prologue
    .line 511
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v1, "Kodi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    goto :goto_0
.end method
