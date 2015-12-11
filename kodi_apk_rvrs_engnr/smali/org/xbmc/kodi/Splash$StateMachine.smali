.class Lorg/xbmc/kodi/Splash$StateMachine;
.super Landroid/os/Handler;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbmc/kodi/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field private mSplash:Lorg/xbmc/kodi/Splash;

.field final synthetic this$0:Lorg/xbmc/kodi/Splash;


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 90
    iput-object p2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 91
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/16 v5, 0x63

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 96
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    iget v1, p1, Landroid/os/Message;->what:I

    # setter for: Lorg/xbmc/kodi/Splash;->mState:I
    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 97
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mState:I
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 144
    :goto_0
    :sswitch_0
    return-void

    .line 99
    :sswitch_1
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-virtual {v0}, Lorg/xbmc/kodi/Splash;->finish()V

    goto :goto_0

    .line 104
    :sswitch_2
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$100(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Clearing cache..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 110
    :sswitch_3
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # setter for: Lorg/xbmc/kodi/Splash;->mCachingDone:Z
    invoke-static {v0, v4}, Lorg/xbmc/kodi/Splash;->access$302(Lorg/xbmc/kodi/Splash;Z)Z

    .line 111
    invoke-virtual {p0, v5}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 114
    :sswitch_4
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$100(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Waiting for external storage..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 118
    :sswitch_5
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$100(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "External storage OK..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # setter for: Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z
    invoke-static {v0, v4}, Lorg/xbmc/kodi/Splash;->access$402(Lorg/xbmc/kodi/Splash;Z)Z

    .line 120
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-virtual {v0}, Lorg/xbmc/kodi/Splash;->stopWatchingExternalStorage()V

    .line 121
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mCachingDone:Z
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v5}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # invokes: Lorg/xbmc/kodi/Splash;->SetupEnvironment()V
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$500(Lorg/xbmc/kodi/Splash;)V

    .line 125
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$600(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$600(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;
    invoke-static {v2}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mInstallLibs:Z
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$800(Lorg/xbmc/kodi/Splash;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    const/4 v1, 0x6

    # setter for: Lorg/xbmc/kodi/Splash;->mState:I
    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 127
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    # setter for: Lorg/xbmc/kodi/Splash;->mCachingDone:Z
    invoke-static {v0, v4}, Lorg/xbmc/kodi/Splash;->access$302(Lorg/xbmc/kodi/Splash;Z)Z

    .line 129
    invoke-virtual {p0, v5}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 131
    :cond_1
    new-instance v0, Lorg/xbmc/kodi/Splash$FillCache;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    iget-object v2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-direct {v0, v1, v2}, Lorg/xbmc/kodi/Splash$FillCache;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$FillCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 137
    :sswitch_6
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$100(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Starting Kodi..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    # getter for: Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-virtual {v0}, Lorg/xbmc/kodi/Splash;->startXBMC()V

    goto/16 :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x63 -> :sswitch_6
    .end sparse-switch
.end method
