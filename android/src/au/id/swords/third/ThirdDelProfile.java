package au.id.swords.third;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.content.Context;
import android.widget.Button;
import android.widget.TextView;
import android.view.View;

public class ThirdDelProfile extends Activity
{
    private Integer mId;
    private TextView mName;
    private Button mOK;
    private Button mCancel;

    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.del_profile);

        mName = (TextView)findViewById(R.id.name);
        mOK = (Button)findViewById(R.id.ok);
        mCancel = (Button)findViewById(R.id.cancel);

        Intent intent = getIntent();
        mId = intent.getIntExtra("id", 0);
        String name = intent.getStringExtra("name");
        if(name != null)
            mName.setText(name);

        mOK.setOnClickListener(new Button.OnClickListener()
        {
            public void onClick(View v)
            {
                Intent intent = new Intent();
                intent.putExtra("id", mId);
                setResult(RESULT_OK, intent);
                finish();
            }
        });
        mCancel.setOnClickListener(new Button.OnClickListener()
        {
            public void onClick(View v)
            {
                setResult(RESULT_CANCELED);
                finish();
            }
        });
    }
}
